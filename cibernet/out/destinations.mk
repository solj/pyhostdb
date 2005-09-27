
all: push-local

#Copy SOURCE=EXTERNAL.cibernet.com

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

diff-EXTERNAL.cibernet.com:
	diff $(DIFFOPT) MP/EXTERNAL.cibernet.com EXTERNAL.cibernet.com

#Copy ...DEST=cibernetcorp@ns0.lt.nostrum.com:~cibernetcorp/zones/. (cibernetcorp_2ns0_Plt_Pnostrum_Pcom_C_tcibernetcorp_Lzones_L_P--EXTERNAL_Pcibernet_Pcom)

DS/cibernetcorp_2ns0_Plt_Pnostrum_Pcom_C_tcibernetcorp_Lzones_L_P--EXTERNAL_Pcibernet_Pcom: MS/EXTERNAL.cibernet.com
	scp MS/EXTERNAL.cibernet.com cibernetcorp@ns0.lt.nostrum.com:~cibernetcorp/zones/.
	@cp MS/EXTERNAL.cibernet.com DS/cibernetcorp_2ns0_Plt_Pnostrum_Pcom_C_tcibernetcorp_Lzones_L_P--EXTERNAL_Pcibernet_Pcom

#Copy ...DEST=/var/named/cibernet.com..zone (_Lvar_Lnamed_Lcibernet_Pcom_P_Pzone--EXTERNAL_Pcibernet_Pcom)

DS/_Lvar_Lnamed_Lcibernet_Pcom_P_Pzone--EXTERNAL_Pcibernet_Pcom: MS/EXTERNAL.cibernet.com
	cp MS/EXTERNAL.cibernet.com /var/named/cibernet.com..zone
	@cp MS/EXTERNAL.cibernet.com DS/_Lvar_Lnamed_Lcibernet_Pcom_P_Pzone--EXTERNAL_Pcibernet_Pcom

#Copy SOURCE=EXTERNAL.6.113.212.in-addr.arpa

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

diff-EXTERNAL.6.113.212.in-addr.arpa:
	diff $(DIFFOPT) MP/EXTERNAL.6.113.212.in-addr.arpa EXTERNAL.6.113.212.in-addr.arpa

#Copy ...DEST=cibernetcorp@ns0.lt.nostrum.com:~cibernetcorp/zones/EXTERNAL.64-127.6.113.212.in-addr.arpa (cibernetcorp_2ns0_Plt_Pnostrum_Pcom_C_tcibernetcorp_Lzones_LEXTERNAL_P64-127_P6_P113_P212_Pin-addr_Parpa--EXTERNAL_P6_P113_P212_Pin-addr_Parpa)

DS/cibernetcorp_2ns0_Plt_Pnostrum_Pcom_C_tcibernetcorp_Lzones_LEXTERNAL_P64-127_P6_P113_P212_Pin-addr_Parpa--EXTERNAL_P6_P113_P212_Pin-addr_Parpa: MS/EXTERNAL.6.113.212.in-addr.arpa
	scp MS/EXTERNAL.6.113.212.in-addr.arpa cibernetcorp@ns0.lt.nostrum.com:~cibernetcorp/zones/EXTERNAL.64-127.6.113.212.in-addr.arpa
	@cp MS/EXTERNAL.6.113.212.in-addr.arpa DS/cibernetcorp_2ns0_Plt_Pnostrum_Pcom_C_tcibernetcorp_Lzones_LEXTERNAL_P64-127_P6_P113_P212_Pin-addr_Parpa--EXTERNAL_P6_P113_P212_Pin-addr_Parpa

#Copy ...DEST=/var/named/64-127.6.113.212.in-addr.arpa.zone (_Lvar_Lnamed_L64-127_P6_P113_P212_Pin-addr_Parpa_Pzone--EXTERNAL_P6_P113_P212_Pin-addr_Parpa)

DS/_Lvar_Lnamed_L64-127_P6_P113_P212_Pin-addr_Parpa_Pzone--EXTERNAL_P6_P113_P212_Pin-addr_Parpa: MS/EXTERNAL.6.113.212.in-addr.arpa
	cp MS/EXTERNAL.6.113.212.in-addr.arpa /var/named/64-127.6.113.212.in-addr.arpa.zone
	@cp MS/EXTERNAL.6.113.212.in-addr.arpa DS/_Lvar_Lnamed_L64-127_P6_P113_P212_Pin-addr_Parpa_Pzone--EXTERNAL_P6_P113_P212_Pin-addr_Parpa

#Copy SOURCE=EXTERNAL.16.113.212.in-addr.arpa

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

diff-EXTERNAL.16.113.212.in-addr.arpa:
	diff $(DIFFOPT) MP/EXTERNAL.16.113.212.in-addr.arpa EXTERNAL.16.113.212.in-addr.arpa

#Copy ...DEST=cibernetcorp@ns0.lt.nostrum.com:~cibernetcorp/zones/EXTERNAL.112-127.16.113.212.in-addr.arpa (cibernetcorp_2ns0_Plt_Pnostrum_Pcom_C_tcibernetcorp_Lzones_LEXTERNAL_P112-127_P16_P113_P212_Pin-addr_Parpa--EXTERNAL_P16_P113_P212_Pin-addr_Parpa)

DS/cibernetcorp_2ns0_Plt_Pnostrum_Pcom_C_tcibernetcorp_Lzones_LEXTERNAL_P112-127_P16_P113_P212_Pin-addr_Parpa--EXTERNAL_P16_P113_P212_Pin-addr_Parpa: MS/EXTERNAL.16.113.212.in-addr.arpa
	scp MS/EXTERNAL.16.113.212.in-addr.arpa cibernetcorp@ns0.lt.nostrum.com:~cibernetcorp/zones/EXTERNAL.112-127.16.113.212.in-addr.arpa
	@cp MS/EXTERNAL.16.113.212.in-addr.arpa DS/cibernetcorp_2ns0_Plt_Pnostrum_Pcom_C_tcibernetcorp_Lzones_LEXTERNAL_P112-127_P16_P113_P212_Pin-addr_Parpa--EXTERNAL_P16_P113_P212_Pin-addr_Parpa

#Copy ...DEST=/var/named/112-127.16.113.212.in-addr.arpa.zone (_Lvar_Lnamed_L112-127_P16_P113_P212_Pin-addr_Parpa_Pzone--EXTERNAL_P16_P113_P212_Pin-addr_Parpa)

DS/_Lvar_Lnamed_L112-127_P16_P113_P212_Pin-addr_Parpa_Pzone--EXTERNAL_P16_P113_P212_Pin-addr_Parpa: MS/EXTERNAL.16.113.212.in-addr.arpa
	cp MS/EXTERNAL.16.113.212.in-addr.arpa /var/named/112-127.16.113.212.in-addr.arpa.zone
	@cp MS/EXTERNAL.16.113.212.in-addr.arpa DS/_Lvar_Lnamed_L112-127_P16_P113_P212_Pin-addr_Parpa_Pzone--EXTERNAL_P16_P113_P212_Pin-addr_Parpa

#Copy SOURCE=INTERNAL.cibernet.com

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

diff-INTERNAL.cibernet.com:
	diff $(DIFFOPT) MP/INTERNAL.cibernet.com INTERNAL.cibernet.com

#Copy ...DEST=adam.cibernet.com:/var/named/. (adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_Pcibernet_Pcom)

DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_Pcibernet_Pcom: MS/INTERNAL.cibernet.com
	scp MS/INTERNAL.cibernet.com adam.cibernet.com:/var/named/.
	@cp MS/INTERNAL.cibernet.com DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_Pcibernet_Pcom

#Copy ...DEST=odnj01.cibernet.com:/var/named/. (odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_Pcibernet_Pcom)

DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_Pcibernet_Pcom: MS/INTERNAL.cibernet.com
	scp MS/INTERNAL.cibernet.com odnj01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.cibernet.com DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_Pcibernet_Pcom

#Copy ...DEST=oduk01.cibernet.com:/var/named/. (oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_Pcibernet_Pcom)

DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_Pcibernet_Pcom: MS/INTERNAL.cibernet.com
	scp MS/INTERNAL.cibernet.com oduk01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.cibernet.com DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_Pcibernet_Pcom

#Copy ...DEST=oduk02.cibernet.com:/var/named/. (oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_Pcibernet_Pcom)

DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_Pcibernet_Pcom: MS/INTERNAL.cibernet.com
	scp MS/INTERNAL.cibernet.com oduk02.cibernet.com:/var/named/.
	@cp MS/INTERNAL.cibernet.com DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_Pcibernet_Pcom

#Copy SOURCE=localhost.zone

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

diff-localhost.zone:
	diff $(DIFFOPT) MP/localhost.zone localhost.zone

#Copy ...DEST=adam.cibernet.com:/var/named/. (adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--localhost_Pzone)

DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--localhost_Pzone: MS/localhost.zone
	scp MS/localhost.zone adam.cibernet.com:/var/named/.
	@cp MS/localhost.zone DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--localhost_Pzone

#Copy ...DEST=odnj01.cibernet.com:/var/named/. (odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--localhost_Pzone)

DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--localhost_Pzone: MS/localhost.zone
	scp MS/localhost.zone odnj01.cibernet.com:/var/named/.
	@cp MS/localhost.zone DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--localhost_Pzone

#Copy ...DEST=oduk01.cibernet.com:/var/named/. (oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--localhost_Pzone)

DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--localhost_Pzone: MS/localhost.zone
	scp MS/localhost.zone oduk01.cibernet.com:/var/named/.
	@cp MS/localhost.zone DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--localhost_Pzone

#Copy ...DEST=oduk02.cibernet.com:/var/named/. (oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--localhost_Pzone)

DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--localhost_Pzone: MS/localhost.zone
	scp MS/localhost.zone oduk02.cibernet.com:/var/named/.
	@cp MS/localhost.zone DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--localhost_Pzone

#Copy SOURCE=named.local

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

diff-named.local:
	diff $(DIFFOPT) MP/named.local named.local

#Copy ...DEST=adam.cibernet.com:/var/named/. (adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--named_Plocal)

DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--named_Plocal: MS/named.local
	scp MS/named.local adam.cibernet.com:/var/named/.
	@cp MS/named.local DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--named_Plocal

#Copy ...DEST=odnj01.cibernet.com:/var/named/. (odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--named_Plocal)

DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--named_Plocal: MS/named.local
	scp MS/named.local odnj01.cibernet.com:/var/named/.
	@cp MS/named.local DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--named_Plocal

#Copy ...DEST=oduk01.cibernet.com:/var/named/. (oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--named_Plocal)

DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--named_Plocal: MS/named.local
	scp MS/named.local oduk01.cibernet.com:/var/named/.
	@cp MS/named.local DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--named_Plocal

#Copy ...DEST=oduk02.cibernet.com:/var/named/. (oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--named_Plocal)

DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--named_Plocal: MS/named.local
	scp MS/named.local oduk02.cibernet.com:/var/named/.
	@cp MS/named.local DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--named_Plocal

#Copy SOURCE=INTERNAL.1.168.192.in-addr.arpa

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

diff-INTERNAL.1.168.192.in-addr.arpa:
	diff $(DIFFOPT) MP/INTERNAL.1.168.192.in-addr.arpa INTERNAL.1.168.192.in-addr.arpa

#Copy ...DEST=adam.cibernet.com:/var/named/. (adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa)

DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa: MS/INTERNAL.1.168.192.in-addr.arpa
	scp MS/INTERNAL.1.168.192.in-addr.arpa adam.cibernet.com:/var/named/.
	@cp MS/INTERNAL.1.168.192.in-addr.arpa DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa

#Copy ...DEST=odnj01.cibernet.com:/var/named/. (odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa)

DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa: MS/INTERNAL.1.168.192.in-addr.arpa
	scp MS/INTERNAL.1.168.192.in-addr.arpa odnj01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.1.168.192.in-addr.arpa DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa

#Copy ...DEST=oduk01.cibernet.com:/var/named/. (oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa)

DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa: MS/INTERNAL.1.168.192.in-addr.arpa
	scp MS/INTERNAL.1.168.192.in-addr.arpa oduk01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.1.168.192.in-addr.arpa DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa

#Copy ...DEST=oduk02.cibernet.com:/var/named/. (oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa)

DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa: MS/INTERNAL.1.168.192.in-addr.arpa
	scp MS/INTERNAL.1.168.192.in-addr.arpa oduk02.cibernet.com:/var/named/.
	@cp MS/INTERNAL.1.168.192.in-addr.arpa DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa

#Copy SOURCE=INTERNAL.201.1.10.in-addr.arpa

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

diff-INTERNAL.201.1.10.in-addr.arpa:
	diff $(DIFFOPT) MP/INTERNAL.201.1.10.in-addr.arpa INTERNAL.201.1.10.in-addr.arpa

#Copy ...DEST=adam.cibernet.com:/var/named/. (adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa)

DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa: MS/INTERNAL.201.1.10.in-addr.arpa
	scp MS/INTERNAL.201.1.10.in-addr.arpa adam.cibernet.com:/var/named/.
	@cp MS/INTERNAL.201.1.10.in-addr.arpa DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa

#Copy ...DEST=odnj01.cibernet.com:/var/named/. (odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa)

DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa: MS/INTERNAL.201.1.10.in-addr.arpa
	scp MS/INTERNAL.201.1.10.in-addr.arpa odnj01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.201.1.10.in-addr.arpa DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa

#Copy ...DEST=oduk01.cibernet.com:/var/named/. (oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa)

DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa: MS/INTERNAL.201.1.10.in-addr.arpa
	scp MS/INTERNAL.201.1.10.in-addr.arpa oduk01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.201.1.10.in-addr.arpa DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa

#Copy ...DEST=oduk02.cibernet.com:/var/named/. (oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa)

DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa: MS/INTERNAL.201.1.10.in-addr.arpa
	scp MS/INTERNAL.201.1.10.in-addr.arpa oduk02.cibernet.com:/var/named/.
	@cp MS/INTERNAL.201.1.10.in-addr.arpa DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa

#Copy SOURCE=INTERNAL.240.1.10.in-addr.arpa

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

diff-INTERNAL.240.1.10.in-addr.arpa:
	diff $(DIFFOPT) MP/INTERNAL.240.1.10.in-addr.arpa INTERNAL.240.1.10.in-addr.arpa

#Copy ...DEST=adam.cibernet.com:/var/named/. (adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa)

DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa: MS/INTERNAL.240.1.10.in-addr.arpa
	scp MS/INTERNAL.240.1.10.in-addr.arpa adam.cibernet.com:/var/named/.
	@cp MS/INTERNAL.240.1.10.in-addr.arpa DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa

#Copy ...DEST=odnj01.cibernet.com:/var/named/. (odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa)

DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa: MS/INTERNAL.240.1.10.in-addr.arpa
	scp MS/INTERNAL.240.1.10.in-addr.arpa odnj01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.240.1.10.in-addr.arpa DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa

#Copy ...DEST=oduk01.cibernet.com:/var/named/. (oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa)

DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa: MS/INTERNAL.240.1.10.in-addr.arpa
	scp MS/INTERNAL.240.1.10.in-addr.arpa oduk01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.240.1.10.in-addr.arpa DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa

#Copy ...DEST=oduk02.cibernet.com:/var/named/. (oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa)

DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa: MS/INTERNAL.240.1.10.in-addr.arpa
	scp MS/INTERNAL.240.1.10.in-addr.arpa oduk02.cibernet.com:/var/named/.
	@cp MS/INTERNAL.240.1.10.in-addr.arpa DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa

#Copy SOURCE=EXTERNAL.named.root

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

diff-EXTERNAL.named.root:
	diff $(DIFFOPT) MP/EXTERNAL.named.root EXTERNAL.named.root

#Copy ...DEST=adam.cibernet.com:/var/named/named.ca (adam_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot)

DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot: MS/EXTERNAL.named.root
	scp MS/EXTERNAL.named.root adam.cibernet.com:/var/named/named.ca
	@cp MS/EXTERNAL.named.root DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot

#Copy ...DEST=odnj01.cibernet.com:/var/named/named.ca (odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot)

DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot: MS/EXTERNAL.named.root
	scp MS/EXTERNAL.named.root odnj01.cibernet.com:/var/named/named.ca
	@cp MS/EXTERNAL.named.root DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot

#Copy ...DEST=oduk01.cibernet.com:/var/named/named.ca (oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot)

DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot: MS/EXTERNAL.named.root
	scp MS/EXTERNAL.named.root oduk01.cibernet.com:/var/named/named.ca
	@cp MS/EXTERNAL.named.root DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot

#Copy ...DEST=oduk02.cibernet.com:/var/named/named.ca (oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot)

DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot: MS/EXTERNAL.named.root
	scp MS/EXTERNAL.named.root oduk02.cibernet.com:/var/named/named.ca
	@cp MS/EXTERNAL.named.root DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot

syncup: MS/EXTERNAL.cibernet.com MS/EXTERNAL.6.113.212.in-addr.arpa MS/EXTERNAL.16.113.212.in-addr.arpa MS/INTERNAL.cibernet.com MS/localhost.zone MS/named.local MS/INTERNAL.1.168.192.in-addr.arpa MS/INTERNAL.201.1.10.in-addr.arpa MS/INTERNAL.240.1.10.in-addr.arpa MS/EXTERNAL.named.root

diff: diff-EXTERNAL.cibernet.com diff-EXTERNAL.6.113.212.in-addr.arpa diff-EXTERNAL.16.113.212.in-addr.arpa diff-INTERNAL.cibernet.com diff-localhost.zone diff-named.local diff-INTERNAL.1.168.192.in-addr.arpa diff-INTERNAL.201.1.10.in-addr.arpa diff-INTERNAL.240.1.10.in-addr.arpa diff-EXTERNAL.named.root

push-all: push-local push-remote

push-local:  DS/_Lvar_Lnamed_Lcibernet_Pcom_P_Pzone--EXTERNAL_Pcibernet_Pcom DS/_Lvar_Lnamed_L64-127_P6_P113_P212_Pin-addr_Parpa_Pzone--EXTERNAL_P6_P113_P212_Pin-addr_Parpa DS/_Lvar_Lnamed_L112-127_P16_P113_P212_Pin-addr_Parpa_Pzone--EXTERNAL_P16_P113_P212_Pin-addr_Parpa

push-remote:  DS/cibernetcorp_2ns0_Plt_Pnostrum_Pcom_C_tcibernetcorp_Lzones_L_P--EXTERNAL_Pcibernet_Pcom DS/cibernetcorp_2ns0_Plt_Pnostrum_Pcom_C_tcibernetcorp_Lzones_LEXTERNAL_P64-127_P6_P113_P212_Pin-addr_Parpa--EXTERNAL_P6_P113_P212_Pin-addr_Parpa DS/cibernetcorp_2ns0_Plt_Pnostrum_Pcom_C_tcibernetcorp_Lzones_LEXTERNAL_P112-127_P16_P113_P212_Pin-addr_Parpa--EXTERNAL_P16_P113_P212_Pin-addr_Parpa DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_Pcibernet_Pcom DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_Pcibernet_Pcom DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_Pcibernet_Pcom DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_Pcibernet_Pcom DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--localhost_Pzone DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--localhost_Pzone DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--localhost_Pzone DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--localhost_Pzone DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--named_Plocal DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--named_Plocal DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--named_Plocal DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--named_Plocal DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot

reload-oduk01.cibernet.com:
	ssh oduk01.cibernet.com 'kill -1 `cat /var/run/named.pid`'

reload-odnj01.cibernet.com:
	ssh odnj01.cibernet.com 'kill -1 `cat /var/run/named.pid`'

reload-oduk02.cibernet.com:
	ssh oduk02.cibernet.com 'kill -1 `cat /var/run/named.pid`'

reload-ns0.lt.nostrum.com:
	ssh ns0.lt.nostrum.com 'sudo rndc reload'

reload-local:
	kill -1 `cat /var/run/named.pid`

reload-adam.cibernet.com:
	ssh adam.cibernet.com 'kill -1 `cat /var/run/name\'d.pid`'

reload-all: reload-local reload-remote

reload-remote: reload-oduk01.cibernet.com reload-odnj01.cibernet.com reload-oduk02.cibernet.com reload-ns0.lt.nostrum.com reload-adam.cibernet.com

