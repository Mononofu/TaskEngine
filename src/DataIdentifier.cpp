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

std::string DataIdentifier::humanReadable() const
{
	return this->id;
}

bool DataIdentifier::isPartOf ( DataIdentifier id ) const
{
	if ( id.humanReadable() == this->id )  // If both strings are the same, 'this' is obviously part of id
	{
		return true;
	}
	else if ( id.humanReadable().substr ( 0, id.humanReadable().length() - 2 ) == this->id.substr ( 0, id.humanReadable().length() - 2 ) ) // if id is a range of objects (something.*) and the range matches with 'this', then it is also part
	{
		return true;
	}
	return false;
}

bool operator== ( const char* lhs, const DataIdentifier& rhs )
{
	return ( lhs == rhs.id );
}

bool operator== ( const DataIdentifier& lhs, const char* rhs )
{
	return ( lhs.id == rhs );
}
