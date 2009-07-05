/***************************************************************************
 *   Copyright (C) 2009 by Mononofu   *
 *   mononofu@mononofu-laptop   *
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, write to the                         *
 *   Free Software Foundation, Inc.,                                       *
 *   59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
 ***************************************************************************/

#include "Threadmanager.h"
#include "InformationManager.h"



Threadmanager::Threadmanager() : threadingMode ( THREADING_FREE_WHEELING )
{
	registerTask( InformationManager::Instance() );
}

bool Threadmanager::doStep()
{
	bool childsAreRunning = false;
	for ( std::vector<Task *>::iterator iter = myTasks.begin(); iter != myTasks.end(); ++iter )
	{
		(*iter)->lastFrameTime = this->lastFrameTime;
		if ( ( *iter )->doStep() )
		{
			childsAreRunning = true;
		}
	}
	if ( !childsAreRunning )
	{
		return false;
	}

	return true;
}

void Threadmanager::threadWillStart()
{
	for ( std::vector<Task *>::iterator iter = myTasks.begin(); iter != myTasks.end(); ++iter )
	{
		( *iter )->threadWillStart();	
	}
}

void Threadmanager::threadWillStop()
{
	for ( std::vector<Task *>::iterator iter = myTasks.begin(); iter != myTasks.end(); ++iter )
	{
		( *iter )->threadWillStop();	
	}
}

bool Threadmanager::willStartThreadOnMe()
{
	if ( threadingMode == THREADING_FREE_WHEELING )
	{
		for ( std::vector<Task *>::iterator iter = myTasks.begin(); iter != myTasks.end(); ++iter )
		{
			myThreads.add_thread ( ( *iter )->run() );
		}
		return false;
	}
	else if ( threadingMode == THREADING_LOCK_STEP )
	{
		SynchronisationBarrier *barrier = new SynchronisationBarrier;
		for ( std::vector<Task *>::iterator iter = myTasks.begin(); iter != myTasks.end(); ++iter )
		{
			( *iter )->setSynchronisationBarrier ( barrier );
			myThreads.add_thread ( ( *iter )->run() );
		}
		return false;
	}
	return true;
}

void Threadmanager::waitForThreadsToFinish()
{
	if ( this->threadingMode == THREADING_SEQUENCIAL )
	{
		this->thisThread->join();
	}
	else
	{
		myThreads.join_all();
	}
}

void Threadmanager::setThreadingMode ( ThreadingMode mode )
{
	this->threadingMode = mode;
}

void Threadmanager::registerTask ( Task* task )
{
	this->myTasks.push_back ( task );
}
