
all: push-local

# If EXTERNAL.179.32.64.in-addr.arpa is new, update the MS and MP version:
MS/EXTERNAL.179.32.64.in-addr.arpa: EXTERNAL.179.32.64.in-addr.arpa
	@if [ ! -r MP/EXTERNAL.179.32.64.in-addr.arpa ] ; \
	then \
		echo CREATING MP/EXTERNAL.179.32.64.in-addr.arpa ; \
		cp EXTERNAL.179.32.64.in-addr.arpa MP/EXTERNAL.179.32.64.in-addr.arpa ; \
	fi
	@if [ ! -r MS/EXTERNAL.179.32.64.in-addr.arpa ] ; \
	then \
		echo CREATING MS/EXTERNAL.179.32.64.in-addr.arpa ; \
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.179.32.64.in-addr.arpa >MS/EXTERNAL.179.32.64.in-addr.arpa ; \
	fi
	@if ! cmp EXTERNAL.179.32.64.in-addr.arpa MP/EXTERNAL.179.32.64.in-addr.arpa  > /dev/null ; \
	then \
		echo UPDATE MP/EXTERNAL.179.32.64.in-addr.arpa ; \
		cp EXTERNAL.179.32.64.in-addr.arpa MP/EXTERNAL.179.32.64.in-addr.arpa ;\
		echo UPDATE MS/EXTERNAL.179.32.64.in-addr.arpa ;\
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.179.32.64.in-addr.arpa >MS/EXTERNAL.179.32.64.in-addr.arpa ; \
	fi

# Compare EXTERNAL.179.32.64.in-addr.arpa against the MS version:
diff-EXTERNAL.179.32.64.in-addr.arpa:
	-diff $(DIFFOPT) MP/EXTERNAL.179.32.64.in-addr.arpa EXTERNAL.179.32.64.in-addr.arpa

# If file needs to be copied to /tmp/named/....
DS/_Ltmp_Lnamed_L.--EXTERNAL.179.32.64.in-addr.arpa: MS/EXTERNAL.179.32.64.in-addr.arpa
	cp MS/EXTERNAL.179.32.64.in-addr.arpa /tmp/named/.
	@cp MS/EXTERNAL.179.32.64.in-addr.arpa DS/_Ltmp_Lnamed_L.--EXTERNAL.179.32.64.in-addr.arpa

# If EXTERNAL.example.com is new, update the MS and MP version:
MS/EXTERNAL.example.com: EXTERNAL.example.com
	@if [ ! -r MP/EXTERNAL.example.com ] ; \
	then \
		echo CREATING MP/EXTERNAL.example.com ; \
		cp EXTERNAL.example.com MP/EXTERNAL.example.com ; \
	fi
	@if [ ! -r MS/EXTERNAL.example.com ] ; \
	then \
		echo CREATING MS/EXTERNAL.example.com ; \
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.example.com >MS/EXTERNAL.example.com ; \
	fi
	@if ! cmp EXTERNAL.example.com MP/EXTERNAL.example.com  > /dev/null ; \
	then \
		echo UPDATE MP/EXTERNAL.example.com ; \
		cp EXTERNAL.example.com MP/EXTERNAL.example.com ;\
		echo UPDATE MS/EXTERNAL.example.com ;\
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.example.com >MS/EXTERNAL.example.com ; \
	fi

# Compare EXTERNAL.example.com against the MS version:
diff-EXTERNAL.example.com:
	-diff $(DIFFOPT) MP/EXTERNAL.example.com EXTERNAL.example.com

# If file needs to be copied to /tmp/named/....
DS/_Ltmp_Lnamed_L.--EXTERNAL.example.com: MS/EXTERNAL.example.com
	cp MS/EXTERNAL.example.com /tmp/named/.
	@cp MS/EXTERNAL.example.com DS/_Ltmp_Lnamed_L.--EXTERNAL.example.com

# If EXTERNAL.named.conf is new, update the MS and MP version:
MS/EXTERNAL.named.conf: EXTERNAL.named.conf
	@if [ ! -r MP/EXTERNAL.named.conf ] ; \
	then \
		echo CREATING MP/EXTERNAL.named.conf ; \
		cp EXTERNAL.named.conf MP/EXTERNAL.named.conf ; \
	fi
	@if [ ! -r MS/EXTERNAL.named.conf ] ; \
	then \
		echo CREATING MS/EXTERNAL.named.conf ; \
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.named.conf >MS/EXTERNAL.named.conf ; \
	fi
	@if ! cmp EXTERNAL.named.conf MP/EXTERNAL.named.conf  > /dev/null ; \
	then \
		echo UPDATE MP/EXTERNAL.named.conf ; \
		cp EXTERNAL.named.conf MP/EXTERNAL.named.conf ;\
		echo UPDATE MS/EXTERNAL.named.conf ;\
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.named.conf >MS/EXTERNAL.named.conf ; \
	fi

# Compare EXTERNAL.named.conf against the MS version:
diff-EXTERNAL.named.conf:
	-diff $(DIFFOPT) MP/EXTERNAL.named.conf EXTERNAL.named.conf

# If file needs to be copied to /tmp/named/....
DS/_Ltmp_Lnamed_L.--EXTERNAL.named.conf: MS/EXTERNAL.named.conf
	cp MS/EXTERNAL.named.conf /tmp/named/.
	@cp MS/EXTERNAL.named.conf DS/_Ltmp_Lnamed_L.--EXTERNAL.named.conf

# If EXTERNAL.named.root is new, update the MS and MP version:
MS/EXTERNAL.named.root: EXTERNAL.named.root
	@if [ ! -r MP/EXTERNAL.named.root ] ; \
	then \
		echo CREATING MP/EXTERNAL.named.root ; \
		cp EXTERNAL.named.root MP/EXTERNAL.named.root ; \
	fi
	@if [ ! -r MS/EXTERNAL.named.root ] ; \
	then \
		echo CREATING MS/EXTERNAL.named.root ; \
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.named.root >MS/EXTERNAL.named.root ; \
	fi
	@if ! cmp EXTERNAL.named.root MP/EXTERNAL.named.root  > /dev/null ; \
	then \
		echo UPDATE MP/EXTERNAL.named.root ; \
		cp EXTERNAL.named.root MP/EXTERNAL.named.root ;\
		echo UPDATE MS/EXTERNAL.named.root ;\
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.named.root >MS/EXTERNAL.named.root ; \
	fi

# Compare EXTERNAL.named.root against the MS version:
diff-EXTERNAL.named.root:
	-diff $(DIFFOPT) MP/EXTERNAL.named.root EXTERNAL.named.root

# If file needs to be copied to /tmp/named/....
DS/_Ltmp_Lnamed_L.--EXTERNAL.named.root: MS/EXTERNAL.named.root
	cp MS/EXTERNAL.named.root /tmp/named/.
	@cp MS/EXTERNAL.named.root DS/_Ltmp_Lnamed_L.--EXTERNAL.named.root

# If EXTERNAL.named.root.new is new, update the MS and MP version:
MS/EXTERNAL.named.root.new: EXTERNAL.named.root.new
	@if [ ! -r MP/EXTERNAL.named.root.new ] ; \
	then \
		echo CREATING MP/EXTERNAL.named.root.new ; \
		cp EXTERNAL.named.root.new MP/EXTERNAL.named.root.new ; \
	fi
	@if [ ! -r MS/EXTERNAL.named.root.new ] ; \
	then \
		echo CREATING MS/EXTERNAL.named.root.new ; \
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.named.root.new >MS/EXTERNAL.named.root.new ; \
	fi
	@if ! cmp EXTERNAL.named.root.new MP/EXTERNAL.named.root.new  > /dev/null ; \
	then \
		echo UPDATE MP/EXTERNAL.named.root.new ; \
		cp EXTERNAL.named.root.new MP/EXTERNAL.named.root.new ;\
		echo UPDATE MS/EXTERNAL.named.root.new ;\
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.named.root.new >MS/EXTERNAL.named.root.new ; \
	fi

# Compare EXTERNAL.named.root.new against the MS version:
diff-EXTERNAL.named.root.new:
	-diff $(DIFFOPT) MP/EXTERNAL.named.root.new EXTERNAL.named.root.new

# If file needs to be copied to /tmp/named/....
DS/_Ltmp_Lnamed_L.--EXTERNAL.named.root.new: MS/EXTERNAL.named.root.new
	cp MS/EXTERNAL.named.root.new /tmp/named/.
	@cp MS/EXTERNAL.named.root.new DS/_Ltmp_Lnamed_L.--EXTERNAL.named.root.new

# If INTERNAL.1.1.10.in-addr.arpa is new, update the MS and MP version:
MS/INTERNAL.1.1.10.in-addr.arpa: INTERNAL.1.1.10.in-addr.arpa
	@if [ ! -r MP/INTERNAL.1.1.10.in-addr.arpa ] ; \
	then \
		echo CREATING MP/INTERNAL.1.1.10.in-addr.arpa ; \
		cp INTERNAL.1.1.10.in-addr.arpa MP/INTERNAL.1.1.10.in-addr.arpa ; \
	fi
	@if [ ! -r MS/INTERNAL.1.1.10.in-addr.arpa ] ; \
	then \
		echo CREATING MS/INTERNAL.1.1.10.in-addr.arpa ; \
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.1.1.10.in-addr.arpa >MS/INTERNAL.1.1.10.in-addr.arpa ; \
	fi
	@if ! cmp INTERNAL.1.1.10.in-addr.arpa MP/INTERNAL.1.1.10.in-addr.arpa  > /dev/null ; \
	then \
		echo UPDATE MP/INTERNAL.1.1.10.in-addr.arpa ; \
		cp INTERNAL.1.1.10.in-addr.arpa MP/INTERNAL.1.1.10.in-addr.arpa ;\
		echo UPDATE MS/INTERNAL.1.1.10.in-addr.arpa ;\
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.1.1.10.in-addr.arpa >MS/INTERNAL.1.1.10.in-addr.arpa ; \
	fi

# Compare INTERNAL.1.1.10.in-addr.arpa against the MS version:
diff-INTERNAL.1.1.10.in-addr.arpa:
	-diff $(DIFFOPT) MP/INTERNAL.1.1.10.in-addr.arpa INTERNAL.1.1.10.in-addr.arpa

# If file needs to be copied to /tmp/named/....
DS/_Ltmp_Lnamed_L.--INTERNAL.1.1.10.in-addr.arpa: MS/INTERNAL.1.1.10.in-addr.arpa
	cp MS/INTERNAL.1.1.10.in-addr.arpa /tmp/named/.
	@cp MS/INTERNAL.1.1.10.in-addr.arpa DS/_Ltmp_Lnamed_L.--INTERNAL.1.1.10.in-addr.arpa

# If INTERNAL.179.32.64.in-addr.arpa is new, update the MS and MP version:
MS/INTERNAL.179.32.64.in-addr.arpa: INTERNAL.179.32.64.in-addr.arpa
	@if [ ! -r MP/INTERNAL.179.32.64.in-addr.arpa ] ; \
	then \
		echo CREATING MP/INTERNAL.179.32.64.in-addr.arpa ; \
		cp INTERNAL.179.32.64.in-addr.arpa MP/INTERNAL.179.32.64.in-addr.arpa ; \
	fi
	@if [ ! -r MS/INTERNAL.179.32.64.in-addr.arpa ] ; \
	then \
		echo CREATING MS/INTERNAL.179.32.64.in-addr.arpa ; \
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.179.32.64.in-addr.arpa >MS/INTERNAL.179.32.64.in-addr.arpa ; \
	fi
	@if ! cmp INTERNAL.179.32.64.in-addr.arpa MP/INTERNAL.179.32.64.in-addr.arpa  > /dev/null ; \
	then \
		echo UPDATE MP/INTERNAL.179.32.64.in-addr.arpa ; \
		cp INTERNAL.179.32.64.in-addr.arpa MP/INTERNAL.179.32.64.in-addr.arpa ;\
		echo UPDATE MS/INTERNAL.179.32.64.in-addr.arpa ;\
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.179.32.64.in-addr.arpa >MS/INTERNAL.179.32.64.in-addr.arpa ; \
	fi

# Compare INTERNAL.179.32.64.in-addr.arpa against the MS version:
diff-INTERNAL.179.32.64.in-addr.arpa:
	-diff $(DIFFOPT) MP/INTERNAL.179.32.64.in-addr.arpa INTERNAL.179.32.64.in-addr.arpa

# If file needs to be copied to /tmp/named/....
DS/_Ltmp_Lnamed_L.--INTERNAL.179.32.64.in-addr.arpa: MS/INTERNAL.179.32.64.in-addr.arpa
	cp MS/INTERNAL.179.32.64.in-addr.arpa /tmp/named/.
	@cp MS/INTERNAL.179.32.64.in-addr.arpa DS/_Ltmp_Lnamed_L.--INTERNAL.179.32.64.in-addr.arpa

# If INTERNAL.example.com is new, update the MS and MP version:
MS/INTERNAL.example.com: INTERNAL.example.com
	@if [ ! -r MP/INTERNAL.example.com ] ; \
	then \
		echo CREATING MP/INTERNAL.example.com ; \
		cp INTERNAL.example.com MP/INTERNAL.example.com ; \
	fi
	@if [ ! -r MS/INTERNAL.example.com ] ; \
	then \
		echo CREATING MS/INTERNAL.example.com ; \
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.example.com >MS/INTERNAL.example.com ; \
	fi
	@if ! cmp INTERNAL.example.com MP/INTERNAL.example.com  > /dev/null ; \
	then \
		echo UPDATE MP/INTERNAL.example.com ; \
		cp INTERNAL.example.com MP/INTERNAL.example.com ;\
		echo UPDATE MS/INTERNAL.example.com ;\
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.example.com >MS/INTERNAL.example.com ; \
	fi

# Compare INTERNAL.example.com against the MS version:
diff-INTERNAL.example.com:
	-diff $(DIFFOPT) MP/INTERNAL.example.com INTERNAL.example.com

# If file needs to be copied to /tmp/named/....
DS/_Ltmp_Lnamed_L.--INTERNAL.example.com: MS/INTERNAL.example.com
	cp MS/INTERNAL.example.com /tmp/named/.
	@cp MS/INTERNAL.example.com DS/_Ltmp_Lnamed_L.--INTERNAL.example.com

# If INTERNAL.named.conf is new, update the MS and MP version:
MS/INTERNAL.named.conf: INTERNAL.named.conf
	@if [ ! -r MP/INTERNAL.named.conf ] ; \
	then \
		echo CREATING MP/INTERNAL.named.conf ; \
		cp INTERNAL.named.conf MP/INTERNAL.named.conf ; \
	fi
	@if [ ! -r MS/INTERNAL.named.conf ] ; \
	then \
		echo CREATING MS/INTERNAL.named.conf ; \
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.named.conf >MS/INTERNAL.named.conf ; \
	fi
	@if ! cmp INTERNAL.named.conf MP/INTERNAL.named.conf  > /dev/null ; \
	then \
		echo UPDATE MP/INTERNAL.named.conf ; \
		cp INTERNAL.named.conf MP/INTERNAL.named.conf ;\
		echo UPDATE MS/INTERNAL.named.conf ;\
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.named.conf >MS/INTERNAL.named.conf ; \
	fi

# Compare INTERNAL.named.conf against the MS version:
diff-INTERNAL.named.conf:
	-diff $(DIFFOPT) MP/INTERNAL.named.conf INTERNAL.named.conf

# If file needs to be copied to /tmp/named/....
DS/_Ltmp_Lnamed_L.--INTERNAL.named.conf: MS/INTERNAL.named.conf
	cp MS/INTERNAL.named.conf /tmp/named/.
	@cp MS/INTERNAL.named.conf DS/_Ltmp_Lnamed_L.--INTERNAL.named.conf

# If dhcpd.conf is new, update the MS and MP version:
MS/dhcpd.conf: dhcpd.conf
	@if [ ! -r MP/dhcpd.conf ] ; \
	then \
		echo CREATING MP/dhcpd.conf ; \
		cp dhcpd.conf MP/dhcpd.conf ; \
	fi
	@if [ ! -r MS/dhcpd.conf ] ; \
	then \
		echo CREATING MS/dhcpd.conf ; \
		sed 's/:serial:/'`cat serial`'/g' <dhcpd.conf >MS/dhcpd.conf ; \
	fi
	@if ! cmp dhcpd.conf MP/dhcpd.conf  > /dev/null ; \
	then \
		echo UPDATE MP/dhcpd.conf ; \
		cp dhcpd.conf MP/dhcpd.conf ;\
		echo UPDATE MS/dhcpd.conf ;\
		sed 's/:serial:/'`cat serial`'/g' <dhcpd.conf >MS/dhcpd.conf ; \
	fi

# Compare dhcpd.conf against the MS version:
diff-dhcpd.conf:
	-diff $(DIFFOPT) MP/dhcpd.conf dhcpd.conf

# If file needs to be copied to /tmp/named/....
DS/_Ltmp_Lnamed_L.--dhcpd.conf: MS/dhcpd.conf
	cp MS/dhcpd.conf /tmp/named/.
	@cp MS/dhcpd.conf DS/_Ltmp_Lnamed_L.--dhcpd.conf


# Sync up the MS/MP directories:

syncup:\
	MS/EXTERNAL.179.32.64.in-addr.arpa\
	MS/EXTERNAL.example.com\
	MS/EXTERNAL.named.conf\
	MS/EXTERNAL.named.root\
	MS/EXTERNAL.named.root.new\
	MS/INTERNAL.1.1.10.in-addr.arpa\
	MS/INTERNAL.179.32.64.in-addr.arpa\
	MS/INTERNAL.example.com\
	MS/INTERNAL.named.conf\
	MS/dhcpd.conf


# Do all diffs: (compare 'out' since last 'syncup'):

diff:\
	diff-EXTERNAL.179.32.64.in-addr.arpa\
	diff-EXTERNAL.example.com\
	diff-EXTERNAL.named.conf\
	diff-EXTERNAL.named.root\
	diff-EXTERNAL.named.root.new\
	diff-INTERNAL.1.1.10.in-addr.arpa\
	diff-INTERNAL.179.32.64.in-addr.arpa\
	diff-INTERNAL.example.com\
	diff-INTERNAL.named.conf\
	diff-dhcpd.conf


# Recipes to push files to appropriate servers:

push-all: push-local push-remote

push-local:\
	DS/_Ltmp_Lnamed_L.--EXTERNAL.179.32.64.in-addr.arpa \
	DS/_Ltmp_Lnamed_L.--EXTERNAL.example.com \
	DS/_Ltmp_Lnamed_L.--EXTERNAL.named.conf \
	DS/_Ltmp_Lnamed_L.--EXTERNAL.named.root \
	DS/_Ltmp_Lnamed_L.--EXTERNAL.named.root.new \
	DS/_Ltmp_Lnamed_L.--INTERNAL.1.1.10.in-addr.arpa \
	DS/_Ltmp_Lnamed_L.--INTERNAL.179.32.64.in-addr.arpa \
	DS/_Ltmp_Lnamed_L.--INTERNAL.example.com \
	DS/_Ltmp_Lnamed_L.--INTERNAL.named.conf \
	DS/_Ltmp_Lnamed_L.--dhcpd.conf

push-remote:\
	


# Recipes to force reloads:

reload-local:
	echo Just a demo.
	@touch DS/reload-local

reload-all: reload-local reload-remote

reload-remote: 


# Recipes to reload 'named' only if it is needed:

DS/reload-local:\
		DS/_Ltmp_Lnamed_L.--EXTERNAL.179.32.64.in-addr.arpa\
		DS/_Ltmp_Lnamed_L.--EXTERNAL.example.com\
		DS/_Ltmp_Lnamed_L.--EXTERNAL.named.conf\
		DS/_Ltmp_Lnamed_L.--EXTERNAL.named.root\
		DS/_Ltmp_Lnamed_L.--EXTERNAL.named.root.new\
		DS/_Ltmp_Lnamed_L.--INTERNAL.1.1.10.in-addr.arpa\
		DS/_Ltmp_Lnamed_L.--INTERNAL.179.32.64.in-addr.arpa\
		DS/_Ltmp_Lnamed_L.--INTERNAL.example.com\
		DS/_Ltmp_Lnamed_L.--INTERNAL.named.conf\
		DS/_Ltmp_Lnamed_L.--dhcpd.conf
	echo Just a demo.
	@touch DS/reload-local

# Reload (only if needed) all servers:
reloadif-all: reloadif-local reloadif-remote

reloadif-local: DS/reload-local

reloadif-remote:\
	

