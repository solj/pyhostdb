

# Copyright 2005 Thomas A. Limoncelli
# 
#     This program is free software; you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation; either version 2 of the License, or
#     (at your option) any later version.
#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.
# 
# 
#     You should have received a copy of the GNU General Public License
#     along with this program; if not, write to the Free Software
#     Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA


# Note:
# Release process:
# 1.  Make sure you have the files ready.
#	a. check everything into SubVersion
#	b. make sure "svn update" outputs nothing

PACKAGE = hostdb
VERSION = 1.004a
distdir = $(PACKAGE)-$(VERSION)

all:
	@echo Nothing to do.


dist: MANIFEST
	-rm -rf $(distdir)
	mkdir $(distdir) && tar cf - `cat MANIFEST` | ( cd $(distdir) && tar xpvf - )
	cd $(distdir) && find . -type d -name .svn -print0 | xargs -0 rm -rf 
	tar zcf $(distdir).tgz $(distdir)
	-rm -rf $(distdir)

push:
	scp $(distdir).tgz www.everythingsysadmin.com:/home/web/data/everythingsysadmin.com/mt/hostdb/releases/$(distdir).tgz
	#ssh www.everythingsysadmin.com "cd /home/web/data/everythingsysadmin.com/mt/hostdb/releases && mv -n new $(distdir).tgz"
