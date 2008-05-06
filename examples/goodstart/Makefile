
all: named.local localhost.zone EXTERNAL.named.root INTERNAL.named.root gennamedconf genzones gendhcpdconf

reload: reload-local reload-remote

clean: rootcache-clean gennamedconf-clean gendhcpdconf-clean push-clean 

monthly: rootcache


#
# General the zone files:
#
gennamedconf: INTERNAL.named.conf EXTERNAL.named.conf SLAVE.named.conf

gennamedconf-clean:
	rm -f INTERNAL.named.conf EXTERNAL.named.conf SLAVE.named.conf

INTERNAL.named.conf: ../zoneconf.txt
	catif ../INTERNAL.named.conf-head	>$@
	mknamedconf INTERNAL <../zoneconf.txt	>>$@
	catif ../INTERNAL.named.conf-tail	>>$@

EXTERNAL.named.conf: ../zoneconf.txt 
	catif ../EXTERNAL.named.conf-head	>$@
	mknamedconf EXTERNAL <../zoneconf.txt	>>$@
	catif ../EXTERNAL.named.conf-tail	>>$@

SLAVE.named.conf: ../zoneconf.txt 
	catif ../SLAVE.named.conf-head		>$@
	mknamedconf SLAVE <../zoneconf.txt	>>$@
	catif ../SLAVE.named.conf-tail		>>$@

#
# Generate zones
#
genzones: newserial ../zoneconf.txt ../hostdb.txt
	mkzones -z ../zoneconf.txt <../hostdb.txt 


newserial:
	echo `date +%Y%m%d%H%M` - 198503989334 | bc >serial

# Note: We subtract a constant from the above date string to
# bring it down to something that will fit in a 32-bit int.
# I don't go for the yyymmddc serial number format that a lot of
# people use.  Why clue people in to when things changed last?
# For a lot of fun, subtract a constant that makes it look
# like the last update was in 1988.

named.local: ../named.local
	cp ../named.local named.local

localhost.zone: ../localhost.zone
	cp ../localhost.zone localhost.zone


# ROOTCACHE STUFF:
#
rootcache: 
	@echo NOTE NOTE NOTE:
	@echo This will fail when the EXTERNAL.named.root file needs to be updated.
	checkrootcache

rootcache-clean:
	rm -f EXTERNAL.named.root.new

EXTERNAL.named.root:
	checkrootcache

# Use this if you use the same named.root inside and out:
INTERNAL.named.root: EXTERNAL.named.root
	cp EXTERNAL.named.root $@

## Use this if you use a different named.root on the inside.
# 1. Create the named.root that you want in ../INTERNAL.named.root.
# 2. This recipe will copy it from there.
#INTERNAL.named.root:
#	cp ../INTERNAL.named.root $@


#
# DHCP-related stuff
#

gendhcpdconf: dhcpd.conf dhcpnetinfo.txt

gendhcpdconf-clean:
	rm -f dhcpd.conf

# Generate the new DHCPd configurtion:
dhcpd.conf: ../dhcpd.conf-head ../hostdb.txt ../dhcpd.conf-tail
	(	cat          ../dhcpd.conf-head ;	\
		mkzones -d < ../hostdb.txt ;		\
		catif        ../dhcpd.conf-tail )	>$@

dhcpnetinfo.txt: ../dhcpnetinfo.txt-head ../hostdb.txt ../dhcpnetinfo.txt-tail
	(	cat ../dhcpnetinfo.txt-head ;		\
		mkzones -d -n < ../hostdb.txt ;		\
		catif   ../dhcpnetinfo.txt-tail )	>$@

#
# Things related to destinations.mk
#
# Update MS/MP (if needed) from the "out" files:
syncup: destinations.mk
	mkdir -p MS MP DS
	make -f destinations.mk syncup

# Diff the "out" files against the MS/MP files:
diff: destinations.mk
	mkdir -p MS MP DS
	make -f destinations.mk diff

push: all push-local push-remote reloadif

push-clean:
	rm -f destinations.mk MP/* MS/* DS/*

push-local: destinations.mk
	mkdir -p MS MP DS
	make -f destinations.mk push-local

push-remote: destinations.mk
	mkdir -p MS MP DS
	make -f destinations.mk push-remote

destinations.mk: ../destinations.txt ../hostdb.txt
	mkdestinations <../destinations.txt >destinations.mk

#
# Reload named
#
reload: reload-local reload-remote

reload-local:
	make -f destinations.mk reload-local

reload-remote:
	make -f destinations.mk reload-remote

# Reload only IF needed:
reloadif: reloadif-local reloadif-remote

reloadif-local:
	make -f destinations.mk reloadif-local

reloadif-remote:
	make -f destinations.mk reloadif-remote

