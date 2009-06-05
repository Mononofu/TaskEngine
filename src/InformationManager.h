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

#include "DataIdentifier.h"
#include "DataProvider.h"
#include "Destroyer.h"

#include <map>
#include <string>
#include <vector>
#include <boost/function.hpp>
#include <boost/bind.hpp>

typedef int SubscriberID;


/** InformationManager singleton, responsible for passing around data.
 *  The InformationManager is basically just a single point to pass data with, so different
 *  classes don't need to know about each other
 */

class InformationManager
{
	public:
		/** Request a single piece of data.
		 *  @param  id a DataIdentifier representing the data, previously registered with offerData
		 *  @param  tries int defaulting to 1, number of times fetching the data should be tried,
			    with a 1s pause in between
		 *  @return the requested data contained in a DataContainer, an empty DataContainer if
		 *  	    the data couldn't be found
		 */
		DataContainer requestData ( const DataIdentifier& id, int tries = 1 );

		/** Used to offer data so it can be requested.
		 *  @param id a DataIdentifier representing the data, or a group of data (basically all ids 
		 *	      starting with the same string as id is)
		 *  @param provider pointer to a class inheriting from DataProvider, which has this data
		 */
		void offerData ( DataIdentifier id, DataProvider* provider );

		// Data feeds
		/** used to post new data to the feed, will get passed on to all subscribers instantly
		 *  @param feedName the name of the feed as std::string, this will be used by subscribers
		 *		    to actually get the data
		 *  @param data a DataContainer object containing the data, will be copied a bunch of times
		 *		(for each subscriber), so should be small
		 */
		void postDataToFeed ( std::string feedName, const DataContainer& data );
		/** used to subscribe via a callback to some feed
		 * @param feedName the name of the feed as std::string, this will be used by subscribers
		 *		    to actually get the data
		 * @param callback function to call, example for a class member: boost::bind( &MyClass::MyFunction, instance, _1 )  
		 * 		   [the _1 is there to indicate that this function takes exaclty one parameter, namely of type DataContainer&]
		 */
		void subscribeToFeed ( std::string feedName, const boost::function< void (const DataContainer&) >& callback );
		
		// returns a pointer to the singleton
		static InformationManager* Instance();
	protected:
		InformationManager() { }
		virtual ~InformationManager() { }
		friend class Destroyer<InformationManager>;
	private:
		static InformationManager* instance;
		static Destroyer<InformationManager> myDestroyer;
		std::map<std::string, DataProvider *> offeredData;
		std::map<std::string, std::vector< boost::function<void (const DataContainer&) > > > subscribers;
};
