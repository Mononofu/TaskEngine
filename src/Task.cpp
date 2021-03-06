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
#include "InformationManager.h"
#include "debug.h"

#include <boost/foreach.hpp>
#define foreach         BOOST_FOREACH
#define reverse_foreach BOOST_REVERSE_FOREACH

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
	distributeData();
	bool result = doStep();
	now = boost::posix_time::microsec_clock::local_time();
	return result;
}

void Task::mainLoop()
{
	InformationManager::Instance()->postDataToFeed( "thread_event", DataContainer(THREAD_STARTING) );
	subscribeToFeed("app_event", boost::bind( &Task::handleAppEvents, this, _1));
	this->threadWillStart();
	InformationManager::Instance()->postDataToFeed( "thread_event", DataContainer(THREAD_STARTED) );
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

void Task::handleAppEvents(const DataContainer& data)
{
	app_event ev = boost::any_cast<app_event>(data.data);
		
	if( ev == APP_SHUTDOWN )
	{
		Dout << this->name << " received shutdown event";
		this->running = false;
	}
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

void Task::subscribeToFeed ( const std::string& feedName, const boost::function< void (const DataContainer&) >& callback )
{
	subscribers[feedName].push_back ( callback );
	InformationManager::Instance()->subscribeToFeed ( feedName, this );
}

void Task::recieveData( const std::string& feedName, const DataContainer& data)
{
	boost::mutex::scoped_lock lock(recieveDataMutex);
	recievedData.push_back( make_pair(feedName, data) );
}

void Task::distributeData()
{
	boost::mutex::scoped_lock lock(recieveDataMutex);
	std::pair< std::string, DataContainer > data;
	foreach( data, recievedData)
	{
		foreach( boost::function<void (const DataContainer&) > callback, subscribers[data.first] )
		{
			callback(data.second);
		}
	}
	recievedData.clear();
}
