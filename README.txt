
Hostdb -- A system for generating internal DNS zones, external DNS
	zones, and DHCP configuration data from the same repository.

	First unveiled at the Usenix LISA 2005 Conference, San
	Diego, December 4-9, 2005 under the title, "HostDB: The
	Best Damn host2DNS/DHCP Script Ever Written".

Copyright 2005 Thomas A. Limoncelli

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.


    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA

CONTACT INFORMATION:

	The author and maintainer: Thomas "Tom" A. Limoncelli <tal+hostdb@whatexit.org>
	http://www.everythingsysadmin.com/hostdb
	Join the mailing list: http://whatexit.org/mailman/listinfo/hostdb-fans


RELEASE HISTORY:

pre-1.0 -- many internal releases


1.000 -- Licensed under GPL and released externally


1.001 --  2006-07-28

canonzone now handles very simple "GENERATE" statements.


1.002 --  2008-02-06

Added "ZONESERVER2" option for zoneconf.txt.  This is just like
ZONESERVER, but no NS record will be generated for the master.
(requested by Sebastian Heidl)

Added -D option to genrange which outputs IP addresses with hyphens
instead of periods. (1-2-3-4 instead of 1.2.3.4).  (requested by
Sebastian Heidl)



TODO:

Better host-down handling:
	If a host is down, the system waits too long to time out.
We could add a "ping host &&" to the front of the statement but we
have to do it in a way such that the datestamp files aren't touched.
Otherwise, when the host comes back up, it will not get the update.

