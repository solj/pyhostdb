
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

Added "HIDEMASTER" option for zoneconf.txt.  This instructs mkzones
to not generate an NS record for the DNS master.  This is useful
for sites that don't want their masters to be used for anything but
zone transfers.
(requested by Sebastian Heidl)

Added -s option to bin/genrange which outputs IP addresses with the
string of your choice instead of periods. Thus you can output 1-2-3-4
instead of 1.2.3.4.
(requested by Sebastian Heidl)

Integrated patch from Sebastian Heidl that adds DOMAINMX option for
zoneconf.txt.  This generates an MX record for the domain, without
having to have any other records. (Previously the trick was to
assign an A record, which would trigger the MX record to be generated.)
Thanks, Sebastian!

1.003 --
Not released.

1.004 -- 2008-05-06

New documentation!
-- Added docs/hostdb-options.txt which documents the hostdb.txt format!
bin/mkzones:
-- new feature: TXT and HINFO support added.
-- new feature: dhcpd.conf now includes comment for each host (uses TXT record data)
-- bug fixed: SOA's last parameter is now listed as "Negative caching TTL"
-- bug fixed: MX records for FQDN now generated properly
-- new requirement: mkzones now uses Text::ParseWords to parse the lines of hosts.txt
bin/genrange:
-- new feature: added two new built-in formats: -3 and -4
-- bug fixed: improved -h message to be more complete
-- bug fixed: default domain is now "domain.com"
bin/mkdestinations:
-- bug fixed: cleaned up generation of {push,reload,reloadif}-{all,local,remote} recipes.
examples:
-- New file: examples/hiddenmaster to test the HIDEMASTER feature
-- New file: examples/goodstart/hostdb.txt: place-holder for people getting started
-- Bug fix: examples/goodstart/Makefile's "dhcp.conf" recipe improved

1.005 -- INSERT DATE

New features:
-- mkzones now has "-o" option to specify output directory (Thanks Tim Bell and Geoff Crompton of Trinity College, The University of Melbourne)
-- bin/checkrootcache now uses "wget" instead of "ftp".  (Thanks Geoff Crompton of Trinity College, The University of Melbourne)
-- zoneinfo.txt now has a "TTL" command to set the default TTL for a zone.  (Thanks Geoff Crompton of Trinity College, The University of Melbourne) 
-- Added smoke-test:  "make test" runs a simple configuration and compares it to a "known good".

TODO / Wishlist:

Better host-down handling:
If a host is down, the system waits too long to time out.
We could add a "ping host &&" to the front of the statement but we
have to do it in a way such that the datestamp files aren't touched.
Otherwise, when the host comes back up, it will not get the update.

Better HINFO handling:
The ability to specify two fields, or assume the first word is the first field.

Unit-testing:
It would be great if there was a directory of configurations and a
makefile that would generate all of them and compare them against
"known good" outputs.

