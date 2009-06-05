/***************************************************************************
 *   Copyright (C) 2008-09 by Julian Schrittwieser                         *
 *   J.Schrittwieser@gmail.com                                             *
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

#include "debug.h"
#include <iostream>
#include <fstream>
#include <boost/shared_ptr.hpp>
#include <boost/log/utility/init/to_console.hpp>
#include <boost/log/utility/init/to_file.hpp>
#include <boost/log/utility/scoped_attribute.hpp>
#include <boost/log/formatters/named_scope.hpp>
#include <boost/thread.hpp>
#include <boost/log/utility/init/common_attributes.hpp>

using boost::shared_ptr;

void initDebug()
{
	logging::init_log_to_console ( std::clog, keywords::format = "%TimeStamp%: %_%" );

	// One can also use lambda expressions to setup filters and formatters
	logging::init_log_to_file
	(
	    "debug.log",
	    keywords::format = fmt::format ( "%1% <%2%> %3% in %4%" )
	                       % fmt::date_time ( "TimeStamp" )
	                       % fmt::attr< severity_level > ( "Severity" )
	                       % fmt::message()
	                       % fmt::attr< boost::thread::id > ( "ThreadID" )
	);

	logging::add_common_attributes();
}
