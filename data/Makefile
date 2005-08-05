

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
	mkdnsconf INTERNAL <../zoneconf.txt >$@

EXTERNAL.named.conf: ../zoneconf.txt 
	mkdnsconf EXTERNAL <../zoneconf.txt >$@

SLAVE.named.conf: ../zoneconf.txt 
	mkdnsconf SLAVE    <../zoneconf.txt >$@

#
# Generate zones
#
genzones: ../zoneconf.txt ../hostdb.txt
	mkzones -z ../zoneconf.txt <../hostdb.txt 


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

