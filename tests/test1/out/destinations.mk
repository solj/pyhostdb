
all: push-local

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

# If file needs to be copied to /tmp/var/named/example.com.zone...
DS/_Ltmp_Lvar_Lnamed_Lexample.com.zone--EXTERNAL.example.com: MS/EXTERNAL.example.com
	cp MS/EXTERNAL.example.com /tmp/var/named/example.com.zone
	@cp MS/EXTERNAL.example.com DS/_Ltmp_Lvar_Lnamed_Lexample.com.zone--EXTERNAL.example.com

# If EXTERNAL.10.10.10.in-addr.arpa is new, update the MS and MP version:
MS/EXTERNAL.10.10.10.in-addr.arpa: EXTERNAL.10.10.10.in-addr.arpa
	@if [ ! -r MP/EXTERNAL.10.10.10.in-addr.arpa ] ; \
	then \
		echo CREATING MP/EXTERNAL.10.10.10.in-addr.arpa ; \
		cp EXTERNAL.10.10.10.in-addr.arpa MP/EXTERNAL.10.10.10.in-addr.arpa ; \
	fi
	@if [ ! -r MS/EXTERNAL.10.10.10.in-addr.arpa ] ; \
	then \
		echo CREATING MS/EXTERNAL.10.10.10.in-addr.arpa ; \
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.10.10.10.in-addr.arpa >MS/EXTERNAL.10.10.10.in-addr.arpa ; \
	fi
	@if ! cmp EXTERNAL.10.10.10.in-addr.arpa MP/EXTERNAL.10.10.10.in-addr.arpa  > /dev/null ; \
	then \
		echo UPDATE MP/EXTERNAL.10.10.10.in-addr.arpa ; \
		cp EXTERNAL.10.10.10.in-addr.arpa MP/EXTERNAL.10.10.10.in-addr.arpa ;\
		echo UPDATE MS/EXTERNAL.10.10.10.in-addr.arpa ;\
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.10.10.10.in-addr.arpa >MS/EXTERNAL.10.10.10.in-addr.arpa ; \
	fi

# Compare EXTERNAL.10.10.10.in-addr.arpa against the MS version:
diff-EXTERNAL.10.10.10.in-addr.arpa:
	-diff $(DIFFOPT) MP/EXTERNAL.10.10.10.in-addr.arpa EXTERNAL.10.10.10.in-addr.arpa

# If file needs to be copied to /tmp/var/named/EXTERNAL.10.10.10.in-addr.arpa.zone...
DS/_Ltmp_Lvar_Lnamed_LEXTERNAL.10.10.10.in-addr.arpa.zone--EXTERNAL.10.10.10.in-addr.arpa: MS/EXTERNAL.10.10.10.in-addr.arpa
	cp MS/EXTERNAL.10.10.10.in-addr.arpa /tmp/var/named/EXTERNAL.10.10.10.in-addr.arpa.zone
	@cp MS/EXTERNAL.10.10.10.in-addr.arpa DS/_Ltmp_Lvar_Lnamed_LEXTERNAL.10.10.10.in-addr.arpa.zone--EXTERNAL.10.10.10.in-addr.arpa

# If EXTERNAL.99.99.99.99.in-addr.arpa is new, update the MS and MP version:
MS/EXTERNAL.99.99.99.99.in-addr.arpa: EXTERNAL.99.99.99.99.in-addr.arpa
	@if [ ! -r MP/EXTERNAL.99.99.99.99.in-addr.arpa ] ; \
	then \
		echo CREATING MP/EXTERNAL.99.99.99.99.in-addr.arpa ; \
		cp EXTERNAL.99.99.99.99.in-addr.arpa MP/EXTERNAL.99.99.99.99.in-addr.arpa ; \
	fi
	@if [ ! -r MS/EXTERNAL.99.99.99.99.in-addr.arpa ] ; \
	then \
		echo CREATING MS/EXTERNAL.99.99.99.99.in-addr.arpa ; \
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.99.99.99.99.in-addr.arpa >MS/EXTERNAL.99.99.99.99.in-addr.arpa ; \
	fi
	@if ! cmp EXTERNAL.99.99.99.99.in-addr.arpa MP/EXTERNAL.99.99.99.99.in-addr.arpa  > /dev/null ; \
	then \
		echo UPDATE MP/EXTERNAL.99.99.99.99.in-addr.arpa ; \
		cp EXTERNAL.99.99.99.99.in-addr.arpa MP/EXTERNAL.99.99.99.99.in-addr.arpa ;\
		echo UPDATE MS/EXTERNAL.99.99.99.99.in-addr.arpa ;\
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.99.99.99.99.in-addr.arpa >MS/EXTERNAL.99.99.99.99.in-addr.arpa ; \
	fi

# Compare EXTERNAL.99.99.99.99.in-addr.arpa against the MS version:
diff-EXTERNAL.99.99.99.99.in-addr.arpa:
	-diff $(DIFFOPT) MP/EXTERNAL.99.99.99.99.in-addr.arpa EXTERNAL.99.99.99.99.in-addr.arpa

# If file needs to be copied to /tmp/var/named/EXTERNAL.99.99.99.in-addr.arpa.zone...
DS/_Ltmp_Lvar_Lnamed_LEXTERNAL.99.99.99.in-addr.arpa.zone--EXTERNAL.99.99.99.99.in-addr.arpa: MS/EXTERNAL.99.99.99.99.in-addr.arpa
	cp MS/EXTERNAL.99.99.99.99.in-addr.arpa /tmp/var/named/EXTERNAL.99.99.99.in-addr.arpa.zone
	@cp MS/EXTERNAL.99.99.99.99.in-addr.arpa DS/_Ltmp_Lvar_Lnamed_LEXTERNAL.99.99.99.in-addr.arpa.zone--EXTERNAL.99.99.99.99.in-addr.arpa

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

# If file needs to be copied to /tmp/var/named/example.com.zone...
DS/_Ltmp_Lvar_Lnamed_Lexample.com.zone--INTERNAL.example.com: MS/INTERNAL.example.com
	cp MS/INTERNAL.example.com /tmp/var/named/example.com.zone
	@cp MS/INTERNAL.example.com DS/_Ltmp_Lvar_Lnamed_Lexample.com.zone--INTERNAL.example.com

# If INTERNAL.10.10.10.in-addr.arpa is new, update the MS and MP version:
MS/INTERNAL.10.10.10.in-addr.arpa: INTERNAL.10.10.10.in-addr.arpa
	@if [ ! -r MP/INTERNAL.10.10.10.in-addr.arpa ] ; \
	then \
		echo CREATING MP/INTERNAL.10.10.10.in-addr.arpa ; \
		cp INTERNAL.10.10.10.in-addr.arpa MP/INTERNAL.10.10.10.in-addr.arpa ; \
	fi
	@if [ ! -r MS/INTERNAL.10.10.10.in-addr.arpa ] ; \
	then \
		echo CREATING MS/INTERNAL.10.10.10.in-addr.arpa ; \
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.10.10.10.in-addr.arpa >MS/INTERNAL.10.10.10.in-addr.arpa ; \
	fi
	@if ! cmp INTERNAL.10.10.10.in-addr.arpa MP/INTERNAL.10.10.10.in-addr.arpa  > /dev/null ; \
	then \
		echo UPDATE MP/INTERNAL.10.10.10.in-addr.arpa ; \
		cp INTERNAL.10.10.10.in-addr.arpa MP/INTERNAL.10.10.10.in-addr.arpa ;\
		echo UPDATE MS/INTERNAL.10.10.10.in-addr.arpa ;\
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.10.10.10.in-addr.arpa >MS/INTERNAL.10.10.10.in-addr.arpa ; \
	fi

# Compare INTERNAL.10.10.10.in-addr.arpa against the MS version:
diff-INTERNAL.10.10.10.in-addr.arpa:
	-diff $(DIFFOPT) MP/INTERNAL.10.10.10.in-addr.arpa INTERNAL.10.10.10.in-addr.arpa

# If file needs to be copied to /tmp/var/named/INTERNAL.10.10.10.in-addr.arpa.zone...
DS/_Ltmp_Lvar_Lnamed_LINTERNAL.10.10.10.in-addr.arpa.zone--INTERNAL.10.10.10.in-addr.arpa: MS/INTERNAL.10.10.10.in-addr.arpa
	cp MS/INTERNAL.10.10.10.in-addr.arpa /tmp/var/named/INTERNAL.10.10.10.in-addr.arpa.zone
	@cp MS/INTERNAL.10.10.10.in-addr.arpa DS/_Ltmp_Lvar_Lnamed_LINTERNAL.10.10.10.in-addr.arpa.zone--INTERNAL.10.10.10.in-addr.arpa

# If INTERNAL.99.99.99.99.in-addr.arpa is new, update the MS and MP version:
MS/INTERNAL.99.99.99.99.in-addr.arpa: INTERNAL.99.99.99.99.in-addr.arpa
	@if [ ! -r MP/INTERNAL.99.99.99.99.in-addr.arpa ] ; \
	then \
		echo CREATING MP/INTERNAL.99.99.99.99.in-addr.arpa ; \
		cp INTERNAL.99.99.99.99.in-addr.arpa MP/INTERNAL.99.99.99.99.in-addr.arpa ; \
	fi
	@if [ ! -r MS/INTERNAL.99.99.99.99.in-addr.arpa ] ; \
	then \
		echo CREATING MS/INTERNAL.99.99.99.99.in-addr.arpa ; \
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.99.99.99.99.in-addr.arpa >MS/INTERNAL.99.99.99.99.in-addr.arpa ; \
	fi
	@if ! cmp INTERNAL.99.99.99.99.in-addr.arpa MP/INTERNAL.99.99.99.99.in-addr.arpa  > /dev/null ; \
	then \
		echo UPDATE MP/INTERNAL.99.99.99.99.in-addr.arpa ; \
		cp INTERNAL.99.99.99.99.in-addr.arpa MP/INTERNAL.99.99.99.99.in-addr.arpa ;\
		echo UPDATE MS/INTERNAL.99.99.99.99.in-addr.arpa ;\
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.99.99.99.99.in-addr.arpa >MS/INTERNAL.99.99.99.99.in-addr.arpa ; \
	fi

# Compare INTERNAL.99.99.99.99.in-addr.arpa against the MS version:
diff-INTERNAL.99.99.99.99.in-addr.arpa:
	-diff $(DIFFOPT) MP/INTERNAL.99.99.99.99.in-addr.arpa INTERNAL.99.99.99.99.in-addr.arpa

# If file needs to be copied to /tmp/var/named/INTERNAL.99.99.99.in-addr.arpa.zone...
DS/_Ltmp_Lvar_Lnamed_LINTERNAL.99.99.99.in-addr.arpa.zone--INTERNAL.99.99.99.99.in-addr.arpa: MS/INTERNAL.99.99.99.99.in-addr.arpa
	cp MS/INTERNAL.99.99.99.99.in-addr.arpa /tmp/var/named/INTERNAL.99.99.99.in-addr.arpa.zone
	@cp MS/INTERNAL.99.99.99.99.in-addr.arpa DS/_Ltmp_Lvar_Lnamed_LINTERNAL.99.99.99.in-addr.arpa.zone--INTERNAL.99.99.99.99.in-addr.arpa

# If localhost.zone is new, update the MS and MP version:
MS/localhost.zone: localhost.zone
	@if [ ! -r MP/localhost.zone ] ; \
	then \
		echo CREATING MP/localhost.zone ; \
		cp localhost.zone MP/localhost.zone ; \
	fi
	@if [ ! -r MS/localhost.zone ] ; \
	then \
		echo CREATING MS/localhost.zone ; \
		sed 's/:serial:/'`cat serial`'/g' <localhost.zone >MS/localhost.zone ; \
	fi
	@if ! cmp localhost.zone MP/localhost.zone  > /dev/null ; \
	then \
		echo UPDATE MP/localhost.zone ; \
		cp localhost.zone MP/localhost.zone ;\
		echo UPDATE MS/localhost.zone ;\
		sed 's/:serial:/'`cat serial`'/g' <localhost.zone >MS/localhost.zone ; \
	fi

# Compare localhost.zone against the MS version:
diff-localhost.zone:
	-diff $(DIFFOPT) MP/localhost.zone localhost.zone

# If file needs to be copied to /tmp/var/named/....
DS/_Ltmp_Lvar_Lnamed_L.--localhost.zone: MS/localhost.zone
	cp MS/localhost.zone /tmp/var/named/.
	@cp MS/localhost.zone DS/_Ltmp_Lvar_Lnamed_L.--localhost.zone

# If named.local is new, update the MS and MP version:
MS/named.local: named.local
	@if [ ! -r MP/named.local ] ; \
	then \
		echo CREATING MP/named.local ; \
		cp named.local MP/named.local ; \
	fi
	@if [ ! -r MS/named.local ] ; \
	then \
		echo CREATING MS/named.local ; \
		sed 's/:serial:/'`cat serial`'/g' <named.local >MS/named.local ; \
	fi
	@if ! cmp named.local MP/named.local  > /dev/null ; \
	then \
		echo UPDATE MP/named.local ; \
		cp named.local MP/named.local ;\
		echo UPDATE MS/named.local ;\
		sed 's/:serial:/'`cat serial`'/g' <named.local >MS/named.local ; \
	fi

# Compare named.local against the MS version:
diff-named.local:
	-diff $(DIFFOPT) MP/named.local named.local

# If file needs to be copied to /tmp/var/named/....
DS/_Ltmp_Lvar_Lnamed_L.--named.local: MS/named.local
	cp MS/named.local /tmp/var/named/.
	@cp MS/named.local DS/_Ltmp_Lvar_Lnamed_L.--named.local

# If INTERNAL.named.root is new, update the MS and MP version:
MS/INTERNAL.named.root: INTERNAL.named.root
	@if [ ! -r MP/INTERNAL.named.root ] ; \
	then \
		echo CREATING MP/INTERNAL.named.root ; \
		cp INTERNAL.named.root MP/INTERNAL.named.root ; \
	fi
	@if [ ! -r MS/INTERNAL.named.root ] ; \
	then \
		echo CREATING MS/INTERNAL.named.root ; \
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.named.root >MS/INTERNAL.named.root ; \
	fi
	@if ! cmp INTERNAL.named.root MP/INTERNAL.named.root  > /dev/null ; \
	then \
		echo UPDATE MP/INTERNAL.named.root ; \
		cp INTERNAL.named.root MP/INTERNAL.named.root ;\
		echo UPDATE MS/INTERNAL.named.root ;\
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.named.root >MS/INTERNAL.named.root ; \
	fi

# Compare INTERNAL.named.root against the MS version:
diff-INTERNAL.named.root:
	-diff $(DIFFOPT) MP/INTERNAL.named.root INTERNAL.named.root

# If file needs to be copied to /tmp/var/named/named.ca...
DS/_Ltmp_Lvar_Lnamed_Lnamed.ca--INTERNAL.named.root: MS/INTERNAL.named.root
	cp MS/INTERNAL.named.root /tmp/var/named/named.ca
	@cp MS/INTERNAL.named.root DS/_Ltmp_Lvar_Lnamed_Lnamed.ca--INTERNAL.named.root

# If dhcpnetinfo.txt is new, update the MS and MP version:
MS/dhcpnetinfo.txt: dhcpnetinfo.txt
	@if [ ! -r MP/dhcpnetinfo.txt ] ; \
	then \
		echo CREATING MP/dhcpnetinfo.txt ; \
		cp dhcpnetinfo.txt MP/dhcpnetinfo.txt ; \
	fi
	@if [ ! -r MS/dhcpnetinfo.txt ] ; \
	then \
		echo CREATING MS/dhcpnetinfo.txt ; \
		sed 's/:serial:/'`cat serial`'/g' <dhcpnetinfo.txt >MS/dhcpnetinfo.txt ; \
	fi
	@if ! cmp dhcpnetinfo.txt MP/dhcpnetinfo.txt  > /dev/null ; \
	then \
		echo UPDATE MP/dhcpnetinfo.txt ; \
		cp dhcpnetinfo.txt MP/dhcpnetinfo.txt ;\
		echo UPDATE MS/dhcpnetinfo.txt ;\
		sed 's/:serial:/'`cat serial`'/g' <dhcpnetinfo.txt >MS/dhcpnetinfo.txt ; \
	fi

# Compare dhcpnetinfo.txt against the MS version:
diff-dhcpnetinfo.txt:
	-diff $(DIFFOPT) MP/dhcpnetinfo.txt dhcpnetinfo.txt

# If file needs to be copied to /var/named/dhcpnetinfo.txt...
DS/_Lvar_Lnamed_Ldhcpnetinfo.txt--dhcpnetinfo.txt: MS/dhcpnetinfo.txt
	cp MS/dhcpnetinfo.txt /var/named/dhcpnetinfo.txt
	@cp MS/dhcpnetinfo.txt DS/_Lvar_Lnamed_Ldhcpnetinfo.txt--dhcpnetinfo.txt


# Sync up the MS/MP directories:

syncup:\
	MS/EXTERNAL.example.com\
	MS/EXTERNAL.10.10.10.in-addr.arpa\
	MS/EXTERNAL.99.99.99.99.in-addr.arpa\
	MS/INTERNAL.example.com\
	MS/INTERNAL.10.10.10.in-addr.arpa\
	MS/INTERNAL.99.99.99.99.in-addr.arpa\
	MS/localhost.zone\
	MS/named.local\
	MS/INTERNAL.named.root\
	MS/dhcpnetinfo.txt


# Do all diffs: (compare 'out' since last 'syncup'):

diff:\
	diff-EXTERNAL.example.com\
	diff-EXTERNAL.10.10.10.in-addr.arpa\
	diff-EXTERNAL.99.99.99.99.in-addr.arpa\
	diff-INTERNAL.example.com\
	diff-INTERNAL.10.10.10.in-addr.arpa\
	diff-INTERNAL.99.99.99.99.in-addr.arpa\
	diff-localhost.zone\
	diff-named.local\
	diff-INTERNAL.named.root\
	diff-dhcpnetinfo.txt


# Recipes to push files to appropriate servers:

push-all: push-local push-remote

push-local:\
	DS/_Ltmp_Lvar_Lnamed_Lexample.com.zone--EXTERNAL.example.com \
	DS/_Ltmp_Lvar_Lnamed_LEXTERNAL.10.10.10.in-addr.arpa.zone--EXTERNAL.10.10.10.in-addr.arpa \
	DS/_Ltmp_Lvar_Lnamed_LEXTERNAL.99.99.99.in-addr.arpa.zone--EXTERNAL.99.99.99.99.in-addr.arpa \
	DS/_Ltmp_Lvar_Lnamed_Lexample.com.zone--INTERNAL.example.com \
	DS/_Ltmp_Lvar_Lnamed_LINTERNAL.10.10.10.in-addr.arpa.zone--INTERNAL.10.10.10.in-addr.arpa \
	DS/_Ltmp_Lvar_Lnamed_LINTERNAL.99.99.99.in-addr.arpa.zone--INTERNAL.99.99.99.99.in-addr.arpa \
	DS/_Ltmp_Lvar_Lnamed_L.--localhost.zone \
	DS/_Ltmp_Lvar_Lnamed_L.--named.local \
	DS/_Ltmp_Lvar_Lnamed_Lnamed.ca--INTERNAL.named.root \
	DS/_Lvar_Lnamed_Ldhcpnetinfo.txt--dhcpnetinfo.txt

push-remote:


# Recipes to force reloads:

reload-local:
	cd /etc && make hostdb
	@touch DS/reload-local

reload-internalhost.example.com:
	ssh internalhost.example.com 'kill -1 `cat /var/run/named.pid`'
	@touch DS/reload-internalhost.example.com

reload-externalhost.example.com:
	ssh externalhost.example.com 'sudo rndc reload'
	@touch DS/reload-externalhost.example.com

reload-all: reload-local reload-remote

reload-remote:\
	reload-internalhost.example.com \
	reload-externalhost.example.com


# Recipes to reload 'named' only if it is needed:

DS/reload-local:\
		DS/_Ltmp_Lvar_Lnamed_L.--localhost.zone\
		DS/_Ltmp_Lvar_Lnamed_L.--named.local\
		DS/_Ltmp_Lvar_Lnamed_LEXTERNAL.10.10.10.in-addr.arpa.zone--EXTERNAL.10.10.10.in-addr.arpa\
		DS/_Ltmp_Lvar_Lnamed_LEXTERNAL.99.99.99.in-addr.arpa.zone--EXTERNAL.99.99.99.99.in-addr.arpa\
		DS/_Ltmp_Lvar_Lnamed_LINTERNAL.10.10.10.in-addr.arpa.zone--INTERNAL.10.10.10.in-addr.arpa\
		DS/_Ltmp_Lvar_Lnamed_LINTERNAL.99.99.99.in-addr.arpa.zone--INTERNAL.99.99.99.99.in-addr.arpa\
		DS/_Ltmp_Lvar_Lnamed_Lexample.com.zone--EXTERNAL.example.com\
		DS/_Ltmp_Lvar_Lnamed_Lexample.com.zone--INTERNAL.example.com\
		DS/_Ltmp_Lvar_Lnamed_Lnamed.ca--INTERNAL.named.root\
		DS/_Lvar_Lnamed_Ldhcpnetinfo.txt--dhcpnetinfo.txt
	cd /etc && make hostdb
	@touch DS/reload-local

reloadif-all: reloadif-local reloadif-remote

reloadif-local:\
	DS/reload-local

reloadif-remote:

