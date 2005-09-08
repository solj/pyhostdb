
all: push-local

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

#Copy ...DEST=adam.cibernet.com:/var/named/INTERNAL.cibernet.com (adam_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom)

DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom: MS/INTERNAL.cibernet.com
	scp MS/INTERNAL.cibernet.com adam.cibernet.com:/var/named/INTERNAL.cibernet.com
	@cp MS/INTERNAL.cibernet.com DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom

#Copy SOURCE=INTERNAL.cibernet.com

#Copy ...DEST=odnj01.cibernet.com:/var/named/INTERNAL.cibernet.com (odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom)

DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom: MS/INTERNAL.cibernet.com
	scp MS/INTERNAL.cibernet.com odnj01.cibernet.com:/var/named/INTERNAL.cibernet.com
	@cp MS/INTERNAL.cibernet.com DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom

#Copy SOURCE=INTERNAL.cibernet.com

#Copy ...DEST=oduk01.cibernet.com:/var/named/INTERNAL.cibernet.com (oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom)

DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom: MS/INTERNAL.cibernet.com
	scp MS/INTERNAL.cibernet.com oduk01.cibernet.com:/var/named/INTERNAL.cibernet.com
	@cp MS/INTERNAL.cibernet.com DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom

#Copy SOURCE=INTERNAL.cibernet.com

#Copy ...DEST=oduk02.cibernet.com:/var/named/INTERNAL.cibernet.com (oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom)

DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom: MS/INTERNAL.cibernet.com
	scp MS/INTERNAL.cibernet.com oduk02.cibernet.com:/var/named/INTERNAL.cibernet.com
	@cp MS/INTERNAL.cibernet.com DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom

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

#Copy ...DEST=adam.cibernet.com:/var/named/. (adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa)

DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa: MS/INTERNAL.1.168.192.in-addr.arpa
	scp MS/INTERNAL.1.168.192.in-addr.arpa adam.cibernet.com:/var/named/.
	@cp MS/INTERNAL.1.168.192.in-addr.arpa DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa

#Copy ...DEST=oduk01.cibernet.com:/var/named/. (oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa)

DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa: MS/INTERNAL.1.168.192.in-addr.arpa
	scp MS/INTERNAL.1.168.192.in-addr.arpa oduk01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.1.168.192.in-addr.arpa DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa

#Copy ...DEST=oduk02.cibernet.com:/var/named/. (oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa)

DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa: MS/INTERNAL.1.168.192.in-addr.arpa
	scp MS/INTERNAL.1.168.192.in-addr.arpa oduk02.cibernet.com:/var/named/.
	@cp MS/INTERNAL.1.168.192.in-addr.arpa DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa

#Copy ...DEST=odnj01.cibernet.com:/var/named/. (odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa)

DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa: MS/INTERNAL.1.168.192.in-addr.arpa
	scp MS/INTERNAL.1.168.192.in-addr.arpa odnj01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.1.168.192.in-addr.arpa DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa

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

#Copy ...DEST=adam.cibernet.com:/var/named/. (adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa)

DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa: MS/INTERNAL.201.1.10.in-addr.arpa
	scp MS/INTERNAL.201.1.10.in-addr.arpa adam.cibernet.com:/var/named/.
	@cp MS/INTERNAL.201.1.10.in-addr.arpa DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa

#Copy ...DEST=oduk01.cibernet.com:/var/named/. (oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa)

DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa: MS/INTERNAL.201.1.10.in-addr.arpa
	scp MS/INTERNAL.201.1.10.in-addr.arpa oduk01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.201.1.10.in-addr.arpa DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa

#Copy ...DEST=oduk02.cibernet.com:/var/named/. (oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa)

DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa: MS/INTERNAL.201.1.10.in-addr.arpa
	scp MS/INTERNAL.201.1.10.in-addr.arpa oduk02.cibernet.com:/var/named/.
	@cp MS/INTERNAL.201.1.10.in-addr.arpa DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa

#Copy ...DEST=odnj01.cibernet.com:/var/named/. (odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa)

DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa: MS/INTERNAL.201.1.10.in-addr.arpa
	scp MS/INTERNAL.201.1.10.in-addr.arpa odnj01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.201.1.10.in-addr.arpa DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa

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

#Copy ...DEST=adam.cibernet.com:/var/named/. (adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa)

DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa: MS/INTERNAL.240.1.10.in-addr.arpa
	scp MS/INTERNAL.240.1.10.in-addr.arpa adam.cibernet.com:/var/named/.
	@cp MS/INTERNAL.240.1.10.in-addr.arpa DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa

#Copy ...DEST=oduk01.cibernet.com:/var/named/. (oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa)

DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa: MS/INTERNAL.240.1.10.in-addr.arpa
	scp MS/INTERNAL.240.1.10.in-addr.arpa oduk01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.240.1.10.in-addr.arpa DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa

#Copy ...DEST=oduk02.cibernet.com:/var/named/. (oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa)

DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa: MS/INTERNAL.240.1.10.in-addr.arpa
	scp MS/INTERNAL.240.1.10.in-addr.arpa oduk02.cibernet.com:/var/named/.
	@cp MS/INTERNAL.240.1.10.in-addr.arpa DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa

#Copy ...DEST=odnj01.cibernet.com:/var/named/. (odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa)

DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa: MS/INTERNAL.240.1.10.in-addr.arpa
	scp MS/INTERNAL.240.1.10.in-addr.arpa odnj01.cibernet.com:/var/named/.
	@cp MS/INTERNAL.240.1.10.in-addr.arpa DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa

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

#Copy ...DEST=shell.whatexit.org:/var/named/cibernet.com.zone (shell_Pwhatexit_Porg_C_Lvar_Lnamed_Lcibernet_Pcom_Pzone--EXTERNAL_Pcibernet_Pcom)

DS/shell_Pwhatexit_Porg_C_Lvar_Lnamed_Lcibernet_Pcom_Pzone--EXTERNAL_Pcibernet_Pcom: MS/EXTERNAL.cibernet.com
	scp MS/EXTERNAL.cibernet.com shell.whatexit.org:/var/named/cibernet.com.zone
	@cp MS/EXTERNAL.cibernet.com DS/shell_Pwhatexit_Porg_C_Lvar_Lnamed_Lcibernet_Pcom_Pzone--EXTERNAL_Pcibernet_Pcom

#Copy ...DEST=cibernetcorp@cronus.duchscher.com:~cibernetcorp/zones/. (cibernetcorp_2cronus_Pduchscher_Pcom_C_tcibernetcorp_Lzones_L_P--EXTERNAL_Pcibernet_Pcom)

DS/cibernetcorp_2cronus_Pduchscher_Pcom_C_tcibernetcorp_Lzones_L_P--EXTERNAL_Pcibernet_Pcom: MS/EXTERNAL.cibernet.com
	scp MS/EXTERNAL.cibernet.com cibernetcorp@cronus.duchscher.com:~cibernetcorp/zones/.
	@cp MS/EXTERNAL.cibernet.com DS/cibernetcorp_2cronus_Pduchscher_Pcom_C_tcibernetcorp_Lzones_L_P--EXTERNAL_Pcibernet_Pcom

push-all:   DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot DS/shell_Pwhatexit_Porg_C_Lvar_Lnamed_Lcibernet_Pcom_Pzone--EXTERNAL_Pcibernet_Pcom DS/cibernetcorp_2cronus_Pduchscher_Pcom_C_tcibernetcorp_Lzones_L_P--EXTERNAL_Pcibernet_Pcom

push-local:  

push-remote:  DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom--INTERNAL_Pcibernet_Pcom DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P1_P168_P192_Pin-addr_Parpa DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P201_P1_P10_Pin-addr_Parpa DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P--INTERNAL_P240_P1_P10_Pin-addr_Parpa DS/adam_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot DS/odnj01_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot DS/oduk01_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot DS/oduk02_Pcibernet_Pcom_C_Lvar_Lnamed_Lnamed_Pca--EXTERNAL_Pnamed_Proot DS/shell_Pwhatexit_Porg_C_Lvar_Lnamed_Lcibernet_Pcom_Pzone--EXTERNAL_Pcibernet_Pcom DS/cibernetcorp_2cronus_Pduchscher_Pcom_C_tcibernetcorp_Lzones_L_P--EXTERNAL_Pcibernet_Pcom

