
all: push-local

# If EXTERNAL.cibernet.com is new, update the MS and MP version:
MS/EXTERNAL.cibernet.com: EXTERNAL.cibernet.com
	@if [ ! -r MP/EXTERNAL.cibernet.com ] ; \
	then \
		echo CREATING MP/EXTERNAL.cibernet.com ; \
		cp EXTERNAL.cibernet.com MP/EXTERNAL.cibernet.com ; \
	fi
	@if [ ! -r MS/EXTERNAL.cibernet.com ] ; \
	then \
		echo CREATING MS/EXTERNAL.cibernet.com ; \
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.cibernet.com >MS/EXTERNAL.cibernet.com ; \
	fi
	@if ! cmp EXTERNAL.cibernet.com MP/EXTERNAL.cibernet.com  > /dev/null ; \
	then \
		echo UPDATE MP/EXTERNAL.cibernet.com ; \
		cp EXTERNAL.cibernet.com MP/EXTERNAL.cibernet.com ;\
		echo UPDATE MS/EXTERNAL.cibernet.com ;\
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.cibernet.com >MS/EXTERNAL.cibernet.com ; \
	fi

# Compare EXTERNAL.cibernet.com against the MS version:
diff-EXTERNAL.cibernet.com:
	diff $(DIFFOPT) MP/EXTERNAL.cibernet.com EXTERNAL.cibernet.com

# If file needs to be copied to cibernetcorp@ns0.lt.nostrum.com:~cibernetcorp/zones/....
DS/cibernetcorp_2ns0.lt.nostrum.com_C_tcibernetcorp_Lzones_L.--EXTERNAL.cibernet.com: MS/EXTERNAL.cibernet.com
	scp MS/EXTERNAL.cibernet.com cibernetcorp@ns0.lt.nostrum.com:~cibernetcorp/zones/.
	@cp MS/EXTERNAL.cibernet.com DS/cibernetcorp_2ns0.lt.nostrum.com_C_tcibernetcorp_Lzones_L.--EXTERNAL.cibernet.com

# If file needs to be copied to /var/named/cibernet.com..zone...
DS/_Lvar_Lnamed_Lcibernet.com..zone--EXTERNAL.cibernet.com: MS/EXTERNAL.cibernet.com
	cp MS/EXTERNAL.cibernet.com /var/named/cibernet.com..zone
	@cp MS/EXTERNAL.cibernet.com DS/_Lvar_Lnamed_Lcibernet.com..zone--EXTERNAL.cibernet.com

# If EXTERNAL.6.113.212.in-addr.arpa is new, update the MS and MP version:
MS/EXTERNAL.6.113.212.in-addr.arpa: EXTERNAL.6.113.212.in-addr.arpa
	@if [ ! -r MP/EXTERNAL.6.113.212.in-addr.arpa ] ; \
	then \
		echo CREATING MP/EXTERNAL.6.113.212.in-addr.arpa ; \
		cp EXTERNAL.6.113.212.in-addr.arpa MP/EXTERNAL.6.113.212.in-addr.arpa ; \
	fi
	@if [ ! -r MS/EXTERNAL.6.113.212.in-addr.arpa ] ; \
	then \
		echo CREATING MS/EXTERNAL.6.113.212.in-addr.arpa ; \
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.6.113.212.in-addr.arpa >MS/EXTERNAL.6.113.212.in-addr.arpa ; \
	fi
	@if ! cmp EXTERNAL.6.113.212.in-addr.arpa MP/EXTERNAL.6.113.212.in-addr.arpa  > /dev/null ; \
	then \
		echo UPDATE MP/EXTERNAL.6.113.212.in-addr.arpa ; \
		cp EXTERNAL.6.113.212.in-addr.arpa MP/EXTERNAL.6.113.212.in-addr.arpa ;\
		echo UPDATE MS/EXTERNAL.6.113.212.in-addr.arpa ;\
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.6.113.212.in-addr.arpa >MS/EXTERNAL.6.113.212.in-addr.arpa ; \
	fi

# Compare EXTERNAL.6.113.212.in-addr.arpa against the MS version:
diff-EXTERNAL.6.113.212.in-addr.arpa:
	diff $(DIFFOPT) MP/EXTERNAL.6.113.212.in-addr.arpa EXTERNAL.6.113.212.in-addr.arpa

# If file needs to be copied to cibernetcorp@ns0.lt.nostrum.com:~cibernetcorp/zones/EXTERNAL.64-127.6.113.212.in-addr.arpa...
DS/cibernetcorp_2ns0.lt.nostrum.com_C_tcibernetcorp_Lzones_LEXTERNAL.64-127.6.113.212.in-addr.arpa--EXTERNAL.6.113.212.in-addr.arpa: MS/EXTERNAL.6.113.212.in-addr.arpa
	scp MS/EXTERNAL.6.113.212.in-addr.arpa cibernetcorp@ns0.lt.nostrum.com:~cibernetcorp/zones/EXTERNAL.64-127.6.113.212.in-addr.arpa
	@cp MS/EXTERNAL.6.113.212.in-addr.arpa DS/cibernetcorp_2ns0.lt.nostrum.com_C_tcibernetcorp_Lzones_LEXTERNAL.64-127.6.113.212.in-addr.arpa--EXTERNAL.6.113.212.in-addr.arpa

# If file needs to be copied to /var/named/64-127.6.113.212.in-addr.arpa.zone...
DS/_Lvar_Lnamed_L64-127.6.113.212.in-addr.arpa.zone--EXTERNAL.6.113.212.in-addr.arpa: MS/EXTERNAL.6.113.212.in-addr.arpa
	cp MS/EXTERNAL.6.113.212.in-addr.arpa /var/named/64-127.6.113.212.in-addr.arpa.zone
	@cp MS/EXTERNAL.6.113.212.in-addr.arpa DS/_Lvar_Lnamed_L64-127.6.113.212.in-addr.arpa.zone--EXTERNAL.6.113.212.in-addr.arpa

# If EXTERNAL.16.113.212.in-addr.arpa is new, update the MS and MP version:
MS/EXTERNAL.16.113.212.in-addr.arpa: EXTERNAL.16.113.212.in-addr.arpa
	@if [ ! -r MP/EXTERNAL.16.113.212.in-addr.arpa ] ; \
	then \
		echo CREATING MP/EXTERNAL.16.113.212.in-addr.arpa ; \
		cp EXTERNAL.16.113.212.in-addr.arpa MP/EXTERNAL.16.113.212.in-addr.arpa ; \
	fi
	@if [ ! -r MS/EXTERNAL.16.113.212.in-addr.arpa ] ; \
	then \
		echo CREATING MS/EXTERNAL.16.113.212.in-addr.arpa ; \
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.16.113.212.in-addr.arpa >MS/EXTERNAL.16.113.212.in-addr.arpa ; \
	fi
	@if ! cmp EXTERNAL.16.113.212.in-addr.arpa MP/EXTERNAL.16.113.212.in-addr.arpa  > /dev/null ; \
	then \
		echo UPDATE MP/EXTERNAL.16.113.212.in-addr.arpa ; \
		cp EXTERNAL.16.113.212.in-addr.arpa MP/EXTERNAL.16.113.212.in-addr.arpa ;\
		echo UPDATE MS/EXTERNAL.16.113.212.in-addr.arpa ;\
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.16.113.212.in-addr.arpa >MS/EXTERNAL.16.113.212.in-addr.arpa ; \
	fi

# Compare EXTERNAL.16.113.212.in-addr.arpa against the MS version:
diff-EXTERNAL.16.113.212.in-addr.arpa:
	diff $(DIFFOPT) MP/EXTERNAL.16.113.212.in-addr.arpa EXTERNAL.16.113.212.in-addr.arpa

# If file needs to be copied to cibernetcorp@ns0.lt.nostrum.com:~cibernetcorp/zones/EXTERNAL.112-127.16.113.212.in-addr.arpa...
DS/cibernetcorp_2ns0.lt.nostrum.com_C_tcibernetcorp_Lzones_LEXTERNAL.112-127.16.113.212.in-addr.arpa--EXTERNAL.16.113.212.in-addr.arpa: MS/EXTERNAL.16.113.212.in-addr.arpa
	scp MS/EXTERNAL.16.113.212.in-addr.arpa cibernetcorp@ns0.lt.nostrum.com:~cibernetcorp/zones/EXTERNAL.112-127.16.113.212.in-addr.arpa
	@cp MS/EXTERNAL.16.113.212.in-addr.arpa DS/cibernetcorp_2ns0.lt.nostrum.com_C_tcibernetcorp_Lzones_LEXTERNAL.112-127.16.113.212.in-addr.arpa--EXTERNAL.16.113.212.in-addr.arpa

# If file needs to be copied to /var/named/112-127.16.113.212.in-addr.arpa.zone...
DS/_Lvar_Lnamed_L112-127.16.113.212.in-addr.arpa.zone--EXTERNAL.16.113.212.in-addr.arpa: MS/EXTERNAL.16.113.212.in-addr.arpa
	cp MS/EXTERNAL.16.113.212.in-addr.arpa /var/named/112-127.16.113.212.in-addr.arpa.zone
	@cp MS/EXTERNAL.16.113.212.in-addr.arpa DS/_Lvar_Lnamed_L112-127.16.113.212.in-addr.arpa.zone--EXTERNAL.16.113.212.in-addr.arpa

# If INTERNAL.cibernet.com is new, update the MS and MP version:
MS/INTERNAL.cibernet.com: INTERNAL.cibernet.com
	@if [ ! -r MP/INTERNAL.cibernet.com ] ; \
	then \
		echo CREATING MP/INTERNAL.cibernet.com ; \
		cp INTERNAL.cibernet.com MP/INTERNAL.cibernet.com ; \
	fi
	@if [ ! -r MS/INTERNAL.cibernet.com ] ; \
	then \
		echo CREATING MS/INTERNAL.cibernet.com ; \
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.cibernet.com >MS/INTERNAL.cibernet.com ; \
	fi
	@if ! cmp INTERNAL.cibernet.com MP/INTERNAL.cibernet.com  > /dev/null ; \
	then \
		echo UPDATE MP/INTERNAL.cibernet.com ; \
		cp INTERNAL.cibernet.com MP/INTERNAL.cibernet.com ;\
		echo UPDATE MS/INTERNAL.cibernet.com ;\
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.cibernet.com >MS/INTERNAL.cibernet.com ; \
	fi

# Compare INTERNAL.cibernet.com against the MS version:
diff-INTERNAL.cibernet.com:
	diff $(DIFFOPT) MP/INTERNAL.cibernet.com INTERNAL.cibernet.com

# If file needs to be copied to adam.cibernet.com:/var/named/....
DS/adam.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.cibernet.com: MS/INTERNAL.cibernet.com
	scp MS/INTERNAL.cibernet.com adam.cibernet.com:/var/named/.
	@cp MS/INTERNAL.cibernet.com DS/adam.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.cibernet.com

# If file needs to be copied to odnj01.cibernet.com:/var/named/....
DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.cibernet.com: MS/INTERNAL.cibernet.com
	scp MS/INTERNAL.cibernet.com odnj01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.cibernet.com DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.cibernet.com

# If file needs to be copied to oduk01.cibernet.com:/var/named/....
DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.cibernet.com: MS/INTERNAL.cibernet.com
	scp MS/INTERNAL.cibernet.com oduk01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.cibernet.com DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.cibernet.com

# If file needs to be copied to oduk02.cibernet.com:/var/named/....
DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.cibernet.com: MS/INTERNAL.cibernet.com
	scp MS/INTERNAL.cibernet.com oduk02.cibernet.com:/var/named/.
	@cp MS/INTERNAL.cibernet.com DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.cibernet.com

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
	diff $(DIFFOPT) MP/localhost.zone localhost.zone

# If file needs to be copied to adam.cibernet.com:/var/named/....
DS/adam.cibernet.com_C_Lvar_Lnamed_L.--localhost.zone: MS/localhost.zone
	scp MS/localhost.zone adam.cibernet.com:/var/named/.
	@cp MS/localhost.zone DS/adam.cibernet.com_C_Lvar_Lnamed_L.--localhost.zone

# If file needs to be copied to odnj01.cibernet.com:/var/named/....
DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--localhost.zone: MS/localhost.zone
	scp MS/localhost.zone odnj01.cibernet.com:/var/named/.
	@cp MS/localhost.zone DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--localhost.zone

# If file needs to be copied to oduk01.cibernet.com:/var/named/....
DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--localhost.zone: MS/localhost.zone
	scp MS/localhost.zone oduk01.cibernet.com:/var/named/.
	@cp MS/localhost.zone DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--localhost.zone

# If file needs to be copied to oduk02.cibernet.com:/var/named/....
DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--localhost.zone: MS/localhost.zone
	scp MS/localhost.zone oduk02.cibernet.com:/var/named/.
	@cp MS/localhost.zone DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--localhost.zone

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
	diff $(DIFFOPT) MP/named.local named.local

# If file needs to be copied to adam.cibernet.com:/var/named/....
DS/adam.cibernet.com_C_Lvar_Lnamed_L.--named.local: MS/named.local
	scp MS/named.local adam.cibernet.com:/var/named/.
	@cp MS/named.local DS/adam.cibernet.com_C_Lvar_Lnamed_L.--named.local

# If file needs to be copied to odnj01.cibernet.com:/var/named/....
DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--named.local: MS/named.local
	scp MS/named.local odnj01.cibernet.com:/var/named/.
	@cp MS/named.local DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--named.local

# If file needs to be copied to oduk01.cibernet.com:/var/named/....
DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--named.local: MS/named.local
	scp MS/named.local oduk01.cibernet.com:/var/named/.
	@cp MS/named.local DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--named.local

# If file needs to be copied to oduk02.cibernet.com:/var/named/....
DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--named.local: MS/named.local
	scp MS/named.local oduk02.cibernet.com:/var/named/.
	@cp MS/named.local DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--named.local

# If INTERNAL.1.168.192.in-addr.arpa is new, update the MS and MP version:
MS/INTERNAL.1.168.192.in-addr.arpa: INTERNAL.1.168.192.in-addr.arpa
	@if [ ! -r MP/INTERNAL.1.168.192.in-addr.arpa ] ; \
	then \
		echo CREATING MP/INTERNAL.1.168.192.in-addr.arpa ; \
		cp INTERNAL.1.168.192.in-addr.arpa MP/INTERNAL.1.168.192.in-addr.arpa ; \
	fi
	@if [ ! -r MS/INTERNAL.1.168.192.in-addr.arpa ] ; \
	then \
		echo CREATING MS/INTERNAL.1.168.192.in-addr.arpa ; \
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.1.168.192.in-addr.arpa >MS/INTERNAL.1.168.192.in-addr.arpa ; \
	fi
	@if ! cmp INTERNAL.1.168.192.in-addr.arpa MP/INTERNAL.1.168.192.in-addr.arpa  > /dev/null ; \
	then \
		echo UPDATE MP/INTERNAL.1.168.192.in-addr.arpa ; \
		cp INTERNAL.1.168.192.in-addr.arpa MP/INTERNAL.1.168.192.in-addr.arpa ;\
		echo UPDATE MS/INTERNAL.1.168.192.in-addr.arpa ;\
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.1.168.192.in-addr.arpa >MS/INTERNAL.1.168.192.in-addr.arpa ; \
	fi

# Compare INTERNAL.1.168.192.in-addr.arpa against the MS version:
diff-INTERNAL.1.168.192.in-addr.arpa:
	diff $(DIFFOPT) MP/INTERNAL.1.168.192.in-addr.arpa INTERNAL.1.168.192.in-addr.arpa

# If file needs to be copied to adam.cibernet.com:/var/named/....
DS/adam.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.1.168.192.in-addr.arpa: MS/INTERNAL.1.168.192.in-addr.arpa
	scp MS/INTERNAL.1.168.192.in-addr.arpa adam.cibernet.com:/var/named/.
	@cp MS/INTERNAL.1.168.192.in-addr.arpa DS/adam.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.1.168.192.in-addr.arpa

# If file needs to be copied to odnj01.cibernet.com:/var/named/....
DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.1.168.192.in-addr.arpa: MS/INTERNAL.1.168.192.in-addr.arpa
	scp MS/INTERNAL.1.168.192.in-addr.arpa odnj01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.1.168.192.in-addr.arpa DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.1.168.192.in-addr.arpa

# If file needs to be copied to oduk01.cibernet.com:/var/named/....
DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.1.168.192.in-addr.arpa: MS/INTERNAL.1.168.192.in-addr.arpa
	scp MS/INTERNAL.1.168.192.in-addr.arpa oduk01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.1.168.192.in-addr.arpa DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.1.168.192.in-addr.arpa

# If file needs to be copied to oduk02.cibernet.com:/var/named/....
DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.1.168.192.in-addr.arpa: MS/INTERNAL.1.168.192.in-addr.arpa
	scp MS/INTERNAL.1.168.192.in-addr.arpa oduk02.cibernet.com:/var/named/.
	@cp MS/INTERNAL.1.168.192.in-addr.arpa DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.1.168.192.in-addr.arpa

# If INTERNAL.201.1.10.in-addr.arpa is new, update the MS and MP version:
MS/INTERNAL.201.1.10.in-addr.arpa: INTERNAL.201.1.10.in-addr.arpa
	@if [ ! -r MP/INTERNAL.201.1.10.in-addr.arpa ] ; \
	then \
		echo CREATING MP/INTERNAL.201.1.10.in-addr.arpa ; \
		cp INTERNAL.201.1.10.in-addr.arpa MP/INTERNAL.201.1.10.in-addr.arpa ; \
	fi
	@if [ ! -r MS/INTERNAL.201.1.10.in-addr.arpa ] ; \
	then \
		echo CREATING MS/INTERNAL.201.1.10.in-addr.arpa ; \
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.201.1.10.in-addr.arpa >MS/INTERNAL.201.1.10.in-addr.arpa ; \
	fi
	@if ! cmp INTERNAL.201.1.10.in-addr.arpa MP/INTERNAL.201.1.10.in-addr.arpa  > /dev/null ; \
	then \
		echo UPDATE MP/INTERNAL.201.1.10.in-addr.arpa ; \
		cp INTERNAL.201.1.10.in-addr.arpa MP/INTERNAL.201.1.10.in-addr.arpa ;\
		echo UPDATE MS/INTERNAL.201.1.10.in-addr.arpa ;\
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.201.1.10.in-addr.arpa >MS/INTERNAL.201.1.10.in-addr.arpa ; \
	fi

# Compare INTERNAL.201.1.10.in-addr.arpa against the MS version:
diff-INTERNAL.201.1.10.in-addr.arpa:
	diff $(DIFFOPT) MP/INTERNAL.201.1.10.in-addr.arpa INTERNAL.201.1.10.in-addr.arpa

# If file needs to be copied to adam.cibernet.com:/var/named/....
DS/adam.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.201.1.10.in-addr.arpa: MS/INTERNAL.201.1.10.in-addr.arpa
	scp MS/INTERNAL.201.1.10.in-addr.arpa adam.cibernet.com:/var/named/.
	@cp MS/INTERNAL.201.1.10.in-addr.arpa DS/adam.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.201.1.10.in-addr.arpa

# If file needs to be copied to odnj01.cibernet.com:/var/named/....
DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.201.1.10.in-addr.arpa: MS/INTERNAL.201.1.10.in-addr.arpa
	scp MS/INTERNAL.201.1.10.in-addr.arpa odnj01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.201.1.10.in-addr.arpa DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.201.1.10.in-addr.arpa

# If file needs to be copied to oduk01.cibernet.com:/var/named/....
DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.201.1.10.in-addr.arpa: MS/INTERNAL.201.1.10.in-addr.arpa
	scp MS/INTERNAL.201.1.10.in-addr.arpa oduk01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.201.1.10.in-addr.arpa DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.201.1.10.in-addr.arpa

# If file needs to be copied to oduk02.cibernet.com:/var/named/....
DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.201.1.10.in-addr.arpa: MS/INTERNAL.201.1.10.in-addr.arpa
	scp MS/INTERNAL.201.1.10.in-addr.arpa oduk02.cibernet.com:/var/named/.
	@cp MS/INTERNAL.201.1.10.in-addr.arpa DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.201.1.10.in-addr.arpa

# If INTERNAL.240.1.10.in-addr.arpa is new, update the MS and MP version:
MS/INTERNAL.240.1.10.in-addr.arpa: INTERNAL.240.1.10.in-addr.arpa
	@if [ ! -r MP/INTERNAL.240.1.10.in-addr.arpa ] ; \
	then \
		echo CREATING MP/INTERNAL.240.1.10.in-addr.arpa ; \
		cp INTERNAL.240.1.10.in-addr.arpa MP/INTERNAL.240.1.10.in-addr.arpa ; \
	fi
	@if [ ! -r MS/INTERNAL.240.1.10.in-addr.arpa ] ; \
	then \
		echo CREATING MS/INTERNAL.240.1.10.in-addr.arpa ; \
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.240.1.10.in-addr.arpa >MS/INTERNAL.240.1.10.in-addr.arpa ; \
	fi
	@if ! cmp INTERNAL.240.1.10.in-addr.arpa MP/INTERNAL.240.1.10.in-addr.arpa  > /dev/null ; \
	then \
		echo UPDATE MP/INTERNAL.240.1.10.in-addr.arpa ; \
		cp INTERNAL.240.1.10.in-addr.arpa MP/INTERNAL.240.1.10.in-addr.arpa ;\
		echo UPDATE MS/INTERNAL.240.1.10.in-addr.arpa ;\
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.240.1.10.in-addr.arpa >MS/INTERNAL.240.1.10.in-addr.arpa ; \
	fi

# Compare INTERNAL.240.1.10.in-addr.arpa against the MS version:
diff-INTERNAL.240.1.10.in-addr.arpa:
	diff $(DIFFOPT) MP/INTERNAL.240.1.10.in-addr.arpa INTERNAL.240.1.10.in-addr.arpa

# If file needs to be copied to adam.cibernet.com:/var/named/....
DS/adam.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.240.1.10.in-addr.arpa: MS/INTERNAL.240.1.10.in-addr.arpa
	scp MS/INTERNAL.240.1.10.in-addr.arpa adam.cibernet.com:/var/named/.
	@cp MS/INTERNAL.240.1.10.in-addr.arpa DS/adam.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.240.1.10.in-addr.arpa

# If file needs to be copied to odnj01.cibernet.com:/var/named/....
DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.240.1.10.in-addr.arpa: MS/INTERNAL.240.1.10.in-addr.arpa
	scp MS/INTERNAL.240.1.10.in-addr.arpa odnj01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.240.1.10.in-addr.arpa DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.240.1.10.in-addr.arpa

# If file needs to be copied to oduk01.cibernet.com:/var/named/....
DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.240.1.10.in-addr.arpa: MS/INTERNAL.240.1.10.in-addr.arpa
	scp MS/INTERNAL.240.1.10.in-addr.arpa oduk01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.240.1.10.in-addr.arpa DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.240.1.10.in-addr.arpa

# If file needs to be copied to oduk02.cibernet.com:/var/named/....
DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.240.1.10.in-addr.arpa: MS/INTERNAL.240.1.10.in-addr.arpa
	scp MS/INTERNAL.240.1.10.in-addr.arpa oduk02.cibernet.com:/var/named/.
	@cp MS/INTERNAL.240.1.10.in-addr.arpa DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.240.1.10.in-addr.arpa

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
	diff $(DIFFOPT) MP/EXTERNAL.named.root EXTERNAL.named.root

# If file needs to be copied to adam.cibernet.com:/var/named/named.ca...
DS/adam.cibernet.com_C_Lvar_Lnamed_Lnamed.ca--EXTERNAL.named.root: MS/EXTERNAL.named.root
	scp MS/EXTERNAL.named.root adam.cibernet.com:/var/named/named.ca
	@cp MS/EXTERNAL.named.root DS/adam.cibernet.com_C_Lvar_Lnamed_Lnamed.ca--EXTERNAL.named.root

# If file needs to be copied to odnj01.cibernet.com:/var/named/named.ca...
DS/odnj01.cibernet.com_C_Lvar_Lnamed_Lnamed.ca--EXTERNAL.named.root: MS/EXTERNAL.named.root
	scp MS/EXTERNAL.named.root odnj01.cibernet.com:/var/named/named.ca
	@cp MS/EXTERNAL.named.root DS/odnj01.cibernet.com_C_Lvar_Lnamed_Lnamed.ca--EXTERNAL.named.root

# If file needs to be copied to oduk01.cibernet.com:/var/named/named.ca...
DS/oduk01.cibernet.com_C_Lvar_Lnamed_Lnamed.ca--EXTERNAL.named.root: MS/EXTERNAL.named.root
	scp MS/EXTERNAL.named.root oduk01.cibernet.com:/var/named/named.ca
	@cp MS/EXTERNAL.named.root DS/oduk01.cibernet.com_C_Lvar_Lnamed_Lnamed.ca--EXTERNAL.named.root

# If file needs to be copied to oduk02.cibernet.com:/var/named/named.ca...
DS/oduk02.cibernet.com_C_Lvar_Lnamed_Lnamed.ca--EXTERNAL.named.root: MS/EXTERNAL.named.root
	scp MS/EXTERNAL.named.root oduk02.cibernet.com:/var/named/named.ca
	@cp MS/EXTERNAL.named.root DS/oduk02.cibernet.com_C_Lvar_Lnamed_Lnamed.ca--EXTERNAL.named.root


# Sync up the MS/MP directories:

syncup:\
	MS/EXTERNAL.cibernet.com\
	MS/EXTERNAL.6.113.212.in-addr.arpa\
	MS/EXTERNAL.16.113.212.in-addr.arpa\
	MS/INTERNAL.cibernet.com\
	MS/localhost.zone\
	MS/named.local\
	MS/INTERNAL.1.168.192.in-addr.arpa\
	MS/INTERNAL.201.1.10.in-addr.arpa\
	MS/INTERNAL.240.1.10.in-addr.arpa\
	MS/EXTERNAL.named.root


# Do all diffs: (compare 'out' since last 'syncup'):

diff:\
	diff-EXTERNAL.cibernet.com\
	diff-EXTERNAL.6.113.212.in-addr.arpa\
	diff-EXTERNAL.16.113.212.in-addr.arpa\
	diff-INTERNAL.cibernet.com\
	diff-localhost.zone\
	diff-named.local\
	diff-INTERNAL.1.168.192.in-addr.arpa\
	diff-INTERNAL.201.1.10.in-addr.arpa\
	diff-INTERNAL.240.1.10.in-addr.arpa\
	diff-EXTERNAL.named.root


# Recipes to push files to appropriate servers:

push-all: push-local push-remote

push-local:\
	DS/_Lvar_Lnamed_Lcibernet.com..zone--EXTERNAL.cibernet.com \
	DS/_Lvar_Lnamed_L64-127.6.113.212.in-addr.arpa.zone--EXTERNAL.6.113.212.in-addr.arpa \
	DS/_Lvar_Lnamed_L112-127.16.113.212.in-addr.arpa.zone--EXTERNAL.16.113.212.in-addr.arpa

push-remote:\
	DS/cibernetcorp_2ns0.lt.nostrum.com_C_tcibernetcorp_Lzones_L.--EXTERNAL.cibernet.com \
	DS/cibernetcorp_2ns0.lt.nostrum.com_C_tcibernetcorp_Lzones_LEXTERNAL.64-127.6.113.212.in-addr.arpa--EXTERNAL.6.113.212.in-addr.arpa \
	DS/cibernetcorp_2ns0.lt.nostrum.com_C_tcibernetcorp_Lzones_LEXTERNAL.112-127.16.113.212.in-addr.arpa--EXTERNAL.16.113.212.in-addr.arpa \
	DS/adam.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.cibernet.com \
	DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.cibernet.com \
	DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.cibernet.com \
	DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.cibernet.com \
	DS/adam.cibernet.com_C_Lvar_Lnamed_L.--localhost.zone \
	DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--localhost.zone \
	DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--localhost.zone \
	DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--localhost.zone \
	DS/adam.cibernet.com_C_Lvar_Lnamed_L.--named.local \
	DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--named.local \
	DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--named.local \
	DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--named.local \
	DS/adam.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.1.168.192.in-addr.arpa \
	DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.1.168.192.in-addr.arpa \
	DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.1.168.192.in-addr.arpa \
	DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.1.168.192.in-addr.arpa \
	DS/adam.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.201.1.10.in-addr.arpa \
	DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.201.1.10.in-addr.arpa \
	DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.201.1.10.in-addr.arpa \
	DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.201.1.10.in-addr.arpa \
	DS/adam.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.240.1.10.in-addr.arpa \
	DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.240.1.10.in-addr.arpa \
	DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.240.1.10.in-addr.arpa \
	DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.240.1.10.in-addr.arpa \
	DS/adam.cibernet.com_C_Lvar_Lnamed_Lnamed.ca--EXTERNAL.named.root \
	DS/odnj01.cibernet.com_C_Lvar_Lnamed_Lnamed.ca--EXTERNAL.named.root \
	DS/oduk01.cibernet.com_C_Lvar_Lnamed_Lnamed.ca--EXTERNAL.named.root \
	DS/oduk02.cibernet.com_C_Lvar_Lnamed_Lnamed.ca--EXTERNAL.named.root


# Recipes to force reloads:

reload-local:
	kill -1 `cat /var/run/named.pid`
	@touch DS/reload-local

reload-adam.cibernet.com:
	ssh adam.cibernet.com 'kill -1 `cat /var/run/named.pid`'
	@touch DS/reload-adam.cibernet.com

reload-odnj01.cibernet.com:
	ssh odnj01.cibernet.com 'kill -1 `cat /var/run/named.pid`'
	@touch DS/reload-odnj01.cibernet.com

reload-oduk01.cibernet.com:
	ssh oduk01.cibernet.com 'kill -1 `cat /var/run/named.pid`'
	@touch DS/reload-oduk01.cibernet.com

reload-oduk02.cibernet.com:
	ssh oduk02.cibernet.com 'kill -1 `cat /var/run/named.pid`'
	@touch DS/reload-oduk02.cibernet.com

reload-cibernetcorp@ns0.lt.nostrum.com:
	ssh cibernetcorp@ns0.lt.nostrum.com 'sudo rndc reload'
	@touch DS/reload-cibernetcorp_2ns0.lt.nostrum.com

reload-all: reload-local reload-remote

reload-remote: reload-adam.cibernet.com reload-odnj01.cibernet.com reload-oduk01.cibernet.com reload-oduk02.cibernet.com reload-cibernetcorp@ns0.lt.nostrum.com


# Recipes to reload 'named' only if it is needed:

DS/reload-adam.cibernet.com:\
		DS/adam.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.1.168.192.in-addr.arpa\
		DS/adam.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.201.1.10.in-addr.arpa\
		DS/adam.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.240.1.10.in-addr.arpa\
		DS/adam.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.cibernet.com\
		DS/adam.cibernet.com_C_Lvar_Lnamed_L.--localhost.zone\
		DS/adam.cibernet.com_C_Lvar_Lnamed_L.--named.local\
		DS/adam.cibernet.com_C_Lvar_Lnamed_Lnamed.ca--EXTERNAL.named.root
	ssh adam.cibernet.com 'kill -1 `cat /var/run/named.pid`'
	@touch DS/reload-adam.cibernet.com

DS/reload-cibernetcorp_2ns0.lt.nostrum.com:\
		DS/cibernetcorp_2ns0.lt.nostrum.com_C_tcibernetcorp_Lzones_L.--EXTERNAL.cibernet.com\
		DS/cibernetcorp_2ns0.lt.nostrum.com_C_tcibernetcorp_Lzones_LEXTERNAL.112-127.16.113.212.in-addr.arpa--EXTERNAL.16.113.212.in-addr.arpa\
		DS/cibernetcorp_2ns0.lt.nostrum.com_C_tcibernetcorp_Lzones_LEXTERNAL.64-127.6.113.212.in-addr.arpa--EXTERNAL.6.113.212.in-addr.arpa
	ssh cibernetcorp@ns0.lt.nostrum.com 'sudo rndc reload'
	@touch DS/reload-cibernetcorp_2ns0.lt.nostrum.com

DS/reload-local:\
		DS/_Lvar_Lnamed_L112-127.16.113.212.in-addr.arpa.zone--EXTERNAL.16.113.212.in-addr.arpa\
		DS/_Lvar_Lnamed_L64-127.6.113.212.in-addr.arpa.zone--EXTERNAL.6.113.212.in-addr.arpa\
		DS/_Lvar_Lnamed_Lcibernet.com..zone--EXTERNAL.cibernet.com
	kill -1 `cat /var/run/named.pid`
	@touch DS/reload-local

DS/reload-odnj01.cibernet.com:\
		DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.1.168.192.in-addr.arpa\
		DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.201.1.10.in-addr.arpa\
		DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.240.1.10.in-addr.arpa\
		DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.cibernet.com\
		DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--localhost.zone\
		DS/odnj01.cibernet.com_C_Lvar_Lnamed_L.--named.local\
		DS/odnj01.cibernet.com_C_Lvar_Lnamed_Lnamed.ca--EXTERNAL.named.root
	ssh odnj01.cibernet.com 'kill -1 `cat /var/run/named.pid`'
	@touch DS/reload-odnj01.cibernet.com

DS/reload-oduk01.cibernet.com:\
		DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.1.168.192.in-addr.arpa\
		DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.201.1.10.in-addr.arpa\
		DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.240.1.10.in-addr.arpa\
		DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.cibernet.com\
		DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--localhost.zone\
		DS/oduk01.cibernet.com_C_Lvar_Lnamed_L.--named.local\
		DS/oduk01.cibernet.com_C_Lvar_Lnamed_Lnamed.ca--EXTERNAL.named.root
	ssh oduk01.cibernet.com 'kill -1 `cat /var/run/named.pid`'
	@touch DS/reload-oduk01.cibernet.com

DS/reload-oduk02.cibernet.com:\
		DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.1.168.192.in-addr.arpa\
		DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.201.1.10.in-addr.arpa\
		DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.240.1.10.in-addr.arpa\
		DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--INTERNAL.cibernet.com\
		DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--localhost.zone\
		DS/oduk02.cibernet.com_C_Lvar_Lnamed_L.--named.local\
		DS/oduk02.cibernet.com_C_Lvar_Lnamed_Lnamed.ca--EXTERNAL.named.root
	ssh oduk02.cibernet.com 'kill -1 `cat /var/run/named.pid`'
	@touch DS/reload-oduk02.cibernet.com

# Reload (only if needed) all servers:
reloadif-all: reloadif-local reloadif-remote

reloadif-local: DS/reload-local

reloadif-remote:\
	DS/reload-adam.cibernet.com \
	DS/reload-cibernetcorp_2ns0.lt.nostrum.com \
	DS/reload-odnj01.cibernet.com \
	DS/reload-oduk01.cibernet.com \
	DS/reload-oduk02.cibernet.com

