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

#include "Task.h"
#include <boost/bind.hpp>
#include <boost/thread.hpp>
#include "boost/date_time/posix_time/posix_time.hpp"

Task::Task()
{
	this->barrier = NULL;
	this->setSynchronisationBarrier ( new SynchronisationBarrier() );
}

boost::thread* Task::run()
{
	this->running = true;
	if ( this->willStartThreadOnMe() )
	{
		this->thisThread = new boost::thread ( boost::bind ( &Task::mainLoop, this ) );
	}
	return this->thisThread;
}

bool Task::step()
{
	lastFrameTime = (boost::posix_time::microsec_clock::local_time().time_of_day() - now.time_of_day()).total_nanoseconds();
	bool result = doStep();
	now = boost::posix_time::microsec_clock::local_time();
	return result;
}

void Task::mainLoop()
{
	this->threadWillStart();
	while ( running )
	{	
		if(! step() )
		{
			break;
		}	
		this->barrier->stepDone();
	}
	this->threadWillStop();
}

void Task::stop()
{
	this->running = false;
}

void Task::setSynchronisationBarrier ( SynchronisationBarrier* barrier )
{
	if ( this->barrier != NULL )
	{
		this->barrier->signOut();
		this->barrier = NULL;
	}
	this->barrier = barrier;
	this->barrier->signIn();
}

double Task::timeSinceLastFrame()
{
	return lastFrameTime / 1000000.0;
}