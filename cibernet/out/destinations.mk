
all: push-local

#Copy SOURCE=INTERNAL.cibernet.com

MP/INTERNAL.cibernet.com:
	touch MP/INTERNAL.cibernet.com

MS/INTERNAL.cibernet.com: MP/INTERNAL.cibernet.com
	if ! cmp INTERNAL.cibernet.com MP/INTERNAL.cibernet.com ; then echo UPDATING MP/INTERNAL.cibernet.com ; cp INTERNAL.cibernet.com MP/INTERNAL.cibernet.com ; sed 's/:serial:/'`cat serial`'/g' <INTERNAL.cibernet.com >MS/INTERNAL.cibernet.com ; fi

#Copy ...DEST=odnj01.cibernet.com:/var/named/INTERNAL.cibernet.com (INTERNAL_Pcibernet_Pcom_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom)

DS/INTERNAL_Pcibernet_Pcom_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom: MS/INTERNAL.cibernet.com
	scp MS/INTERNAL.cibernet.com odnj01.cibernet.com:/var/named/INTERNAL.cibernet.com
	cp MS/INTERNAL.cibernet.com DS/INTERNAL_Pcibernet_Pcom_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom

#Copy SOURCE=INTERNAL.cibernet.com

#Copy ...DEST=adam.cibernet.com:/var/named/INTERNAL.cibernet.com (INTERNAL_Pcibernet_Pcom_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom)

DS/INTERNAL_Pcibernet_Pcom_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom: MS/INTERNAL.cibernet.com
	scp MS/INTERNAL.cibernet.com adam.cibernet.com:/var/named/INTERNAL.cibernet.com
	cp MS/INTERNAL.cibernet.com DS/INTERNAL_Pcibernet_Pcom_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom

#Copy SOURCE=INTERNAL.1.168.192.in-addr.arpa

MP/INTERNAL.1.168.192.in-addr.arpa:
	touch MP/INTERNAL.1.168.192.in-addr.arpa

MS/INTERNAL.1.168.192.in-addr.arpa: MP/INTERNAL.1.168.192.in-addr.arpa
	if ! cmp INTERNAL.1.168.192.in-addr.arpa MP/INTERNAL.1.168.192.in-addr.arpa ; then echo UPDATING MP/INTERNAL.1.168.192.in-addr.arpa ; cp INTERNAL.1.168.192.in-addr.arpa MP/INTERNAL.1.168.192.in-addr.arpa ; sed 's/:serial:/'`cat serial`'/g' <INTERNAL.1.168.192.in-addr.arpa >MS/INTERNAL.1.168.192.in-addr.arpa ; fi

#Copy ...DEST=odnj01.cibernet.com:/var/named/. (INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P)

DS/INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P: MS/INTERNAL.1.168.192.in-addr.arpa
	scp MS/INTERNAL.1.168.192.in-addr.arpa odnj01.cibernet.com:/var/named/.
	cp MS/INTERNAL.1.168.192.in-addr.arpa DS/INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P

#Copy ...DEST=adam.cibernet.com:/var/named/. (INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P)

DS/INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P: MS/INTERNAL.1.168.192.in-addr.arpa
	scp MS/INTERNAL.1.168.192.in-addr.arpa adam.cibernet.com:/var/named/.
	cp MS/INTERNAL.1.168.192.in-addr.arpa DS/INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P

#Copy SOURCE=INTERNAL.201.1.10.in-addr.arpa

MP/INTERNAL.201.1.10.in-addr.arpa:
	touch MP/INTERNAL.201.1.10.in-addr.arpa

MS/INTERNAL.201.1.10.in-addr.arpa: MP/INTERNAL.201.1.10.in-addr.arpa
	if ! cmp INTERNAL.201.1.10.in-addr.arpa MP/INTERNAL.201.1.10.in-addr.arpa ; then echo UPDATING MP/INTERNAL.201.1.10.in-addr.arpa ; cp INTERNAL.201.1.10.in-addr.arpa MP/INTERNAL.201.1.10.in-addr.arpa ; sed 's/:serial:/'`cat serial`'/g' <INTERNAL.201.1.10.in-addr.arpa >MS/INTERNAL.201.1.10.in-addr.arpa ; fi

#Copy ...DEST=odnj01.cibernet.com:/var/named/. (INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P)

DS/INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P: MS/INTERNAL.201.1.10.in-addr.arpa
	scp MS/INTERNAL.201.1.10.in-addr.arpa odnj01.cibernet.com:/var/named/.
	cp MS/INTERNAL.201.1.10.in-addr.arpa DS/INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P

#Copy ...DEST=adam.cibernet.com:/var/named/. (INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P)

DS/INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P: MS/INTERNAL.201.1.10.in-addr.arpa
	scp MS/INTERNAL.201.1.10.in-addr.arpa adam.cibernet.com:/var/named/.
	cp MS/INTERNAL.201.1.10.in-addr.arpa DS/INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P

#Copy SOURCE=INTERNAL.240.1.10.in-addr.arpa

MP/INTERNAL.240.1.10.in-addr.arpa:
	touch MP/INTERNAL.240.1.10.in-addr.arpa

MS/INTERNAL.240.1.10.in-addr.arpa: MP/INTERNAL.240.1.10.in-addr.arpa
	if ! cmp INTERNAL.240.1.10.in-addr.arpa MP/INTERNAL.240.1.10.in-addr.arpa ; then echo UPDATING MP/INTERNAL.240.1.10.in-addr.arpa ; cp INTERNAL.240.1.10.in-addr.arpa MP/INTERNAL.240.1.10.in-addr.arpa ; sed 's/:serial:/'`cat serial`'/g' <INTERNAL.240.1.10.in-addr.arpa >MS/INTERNAL.240.1.10.in-addr.arpa ; fi

#Copy ...DEST=odnj01.cibernet.com:/var/named/. (INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P)

DS/INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P: MS/INTERNAL.240.1.10.in-addr.arpa
	scp MS/INTERNAL.240.1.10.in-addr.arpa odnj01.cibernet.com:/var/named/.
	cp MS/INTERNAL.240.1.10.in-addr.arpa DS/INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P

#Copy ...DEST=adam.cibernet.com:/var/named/. (INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P)

DS/INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P: MS/INTERNAL.240.1.10.in-addr.arpa
	scp MS/INTERNAL.240.1.10.in-addr.arpa adam.cibernet.com:/var/named/.
	cp MS/INTERNAL.240.1.10.in-addr.arpa DS/INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P

#Copy SOURCE=EXTERNAL.cibernet.com

MP/EXTERNAL.cibernet.com:
	touch MP/EXTERNAL.cibernet.com

MS/EXTERNAL.cibernet.com: MP/EXTERNAL.cibernet.com
	if ! cmp EXTERNAL.cibernet.com MP/EXTERNAL.cibernet.com ; then echo UPDATING MP/EXTERNAL.cibernet.com ; cp EXTERNAL.cibernet.com MP/EXTERNAL.cibernet.com ; sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.cibernet.com >MS/EXTERNAL.cibernet.com ; fi

#Copy ...DEST=shell.whatexit.org:/var/named/cibernet.com.zone (EXTERNAL_Pcibernet_Pcom_Sshell_Pwhatexit_Porg_C_Lvar_Lnamed_Lcibernet_Pcom_Pzone)

DS/EXTERNAL_Pcibernet_Pcom_Sshell_Pwhatexit_Porg_C_Lvar_Lnamed_Lcibernet_Pcom_Pzone: MS/EXTERNAL.cibernet.com
	scp MS/EXTERNAL.cibernet.com shell.whatexit.org:/var/named/cibernet.com.zone
	cp MS/EXTERNAL.cibernet.com DS/EXTERNAL_Pcibernet_Pcom_Sshell_Pwhatexit_Porg_C_Lvar_Lnamed_Lcibernet_Pcom_Pzone

push-all: MP/INTERNAL.cibernet.com MP/INTERNAL.1.168.192.in-addr.arpa MP/INTERNAL.201.1.10.in-addr.arpa MP/INTERNAL.240.1.10.in-addr.arpa MP/EXTERNAL.cibernet.com  DS/INTERNAL_Pcibernet_Pcom_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom DS/INTERNAL_Pcibernet_Pcom_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom DS/INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P DS/INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P DS/INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P DS/INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P DS/INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P DS/INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P DS/EXTERNAL_Pcibernet_Pcom_Sshell_Pwhatexit_Porg_C_Lvar_Lnamed_Lcibernet_Pcom_Pzone

push-local: MP/INTERNAL.cibernet.com MP/INTERNAL.1.168.192.in-addr.arpa MP/INTERNAL.201.1.10.in-addr.arpa MP/INTERNAL.240.1.10.in-addr.arpa MP/EXTERNAL.cibernet.com 

push-remote: MP/INTERNAL.cibernet.com MP/INTERNAL.1.168.192.in-addr.arpa MP/INTERNAL.201.1.10.in-addr.arpa MP/INTERNAL.240.1.10.in-addr.arpa MP/EXTERNAL.cibernet.com DS/INTERNAL_Pcibernet_Pcom_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom DS/INTERNAL_Pcibernet_Pcom_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom DS/INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P DS/INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P DS/INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P DS/INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P DS/INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P DS/INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P DS/EXTERNAL_Pcibernet_Pcom_Sshell_Pwhatexit_Porg_C_Lvar_Lnamed_Lcibernet_Pcom_Pzone

