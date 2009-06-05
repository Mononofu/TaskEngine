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

#ifndef DATA_IDENTIFIER_H
#define DATA_IDENTIFIER_H

#include <string>

class DataIdentifier
{
	public:
		DataIdentifier() { }
		DataIdentifier ( std::string stringId ) : id ( stringId ) { }
		DataIdentifier ( const char* stringId ) : id ( stringId ) { }
		bool isPartOf ( DataIdentifier id ) const;
		std::string humanReadable() const;
		friend bool operator== ( const char* lhs, const DataIdentifier& rhs );
		friend bool operator== ( const DataIdentifier& lhs, const char* rhs );
	private:
		std::string id;
};

#endif