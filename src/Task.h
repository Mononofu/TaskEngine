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

#ifndef TASK_H
#define TASK_H

#include "SynchronisationBarrier.h"
#include "DataContainer.h"

class Threadmanager;

class Task
{
	public:
		Task();
		boost::thread* run();
		void stop();
		void setSpeedFactor ( int factor );		// Only applied when in lock_step mode - determines how many steps this task executes before it waits at the barrier
		bool step();
		void handleAppEvents(const DataContainer& data);
		friend class Threadmanager;
		friend class InformationManager;
	protected:
		void mainLoop();
		virtual bool doStep() = 0;
		
		void setSynchronisationBarrier ( SynchronisationBarrier* barrier );
		virtual bool willStartThreadOnMe()
		{
			return true;    // Is called before before thread is started, in context of calling thread, returning false won't start the thread
		}
		virtual void threadWillStart() { }		// Is called after creating the thread, in the context of the thread, but before starting with "doStep()"
		virtual void threadWillStop() { }		// Is called before terminating the thread
		double timeSinceLastFrame();
		bool running;
		
	private:
		boost::posix_time::ptime now;
		SynchronisationBarrier* barrier;
		int speedFactor;
		long lastFrameTime;
		boost::thread *thisThread;
		std::string name;
};

#endif
