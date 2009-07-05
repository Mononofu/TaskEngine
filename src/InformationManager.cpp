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

#include "InformationManager.h"
#include "debug.h"
#include <boost/thread.hpp>
#include <boost/thread/locks.hpp>

#include <boost/foreach.hpp>
#define foreach         BOOST_FOREACH
#define reverse_foreach BOOST_REVERSE_FOREACH

InformationManager* InformationManager::instance;
Destroyer<InformationManager> InformationManager::myDestroyer;

InformationManager* InformationManager::Instance()
{
	if ( instance == 0 )  // is it the first call?
	{
		instance = new InformationManager; // create sole instance
		myDestroyer.SetDoomed ( instance );
	}
	return instance; // address of sole instance
}

void InformationManager::offerData ( DataIdentifier id, DataProvider* provider )
{
	boost::mutex::scoped_lock lock(providerMutex);
	this->offeredData[id.humanReadable() ] = provider;
}

DataContainer InformationManager::requestData ( const DataIdentifier& id, int tries )
{
	for ( int i = tries; i > 0; i-- )
	{
		for ( std::map<std::string, DataProvider *>::iterator iter = offeredData.begin(); iter != offeredData.end(); ++iter )
		{
			if ( id.isPartOf ( iter->first ) )
			{
				return iter->second->getData ( id );
			}
		}
		Dout << "Retrying to fetch data " << id.humanReadable();
		boost::this_thread::sleep ( boost::posix_time::milliseconds ( 1000 ) );	// Wait 1 s
	}
	return DataContainer();
}

void InformationManager::postDataToFeed ( std::string feedName, const DataContainer& data )
{
	boost::mutex::scoped_lock lock(postDataMutex);
	postedData.push_back( make_pair(feedName, data) );
}

bool InformationManager::doStep()
{
	boost::mutex::scoped_lock lock(postDataMutex);
	std::pair< std::string, DataContainer > data;
	foreach( data, postedData)
	{
		if ( subscribers[data.first].size() > 0 )
		{
			foreach( boost::function<void (const DataContainer&) > callback, subscribers[data.first])
			{
				callback( data.second );
			}
		}
	}
	postedData.clear();
	return true;
}

void InformationManager::subscribeToFeed ( std::string feedName, const boost::function< void (const DataContainer&) >& callback )
{
	boost::mutex::scoped_lock lock(subscriberMutex);
	subscribers[feedName].push_back ( callback );
}



