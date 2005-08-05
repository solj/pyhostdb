

all: EXTERNAL.named.root gennamedconf genzones

clean: rootcache-clean gennamedconf-clean

monthly: rootcache


#
# General the zone files:
#
gennamedconf: INTERNAL.named.conf EXTERNAL.named.conf SLAVE.named.conf

gennamedconf-clean:
	rm -f INTERNAL.named.conf EXTERNAL.named.conf SLAVE.named.conf

INTERNAL.named.conf: ../zoneconf.txt
	mknamedconf INTERNAL <../zoneconf.txt >$@

EXTERNAL.named.conf: ../zoneconf.txt 
	mknamedconf EXTERNAL <../zoneconf.txt >$@

SLAVE.named.conf: ../zoneconf.txt 
	mknamedconf SLAVE    <../zoneconf.txt >$@

#
# Generate zones
#
genzones: newserial ../zoneconf.txt ../hostdb.txt
	mkzones -z ../zoneconf.txt <../hostdb.txt 


newserial:
	echo `date +%Y%m%d%H%M` - 200508051414 | bc >serial

# Note: We subtract a constant from the above date string to
# bring it down to something that will fit in a 32-bit int.
# I don't go for the yyymmddc serial number format that a lot of
# people use.  Why clue people in to when things changed last?


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

#
# Push
push: push-local push-remote

push-local: destinations.mk
	make -f destinations.mk push-local

push-remote: destinations.mk
	make -f destinations.mk push-remote

destinations.mk: ../destinations.txt
	mkdir -p Done PrevPlainVersion SerialsAdded
	mkdestinations <../destinations.txt >destinations.mk

