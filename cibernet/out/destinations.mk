
all: push-local

#Copy INTERNAL.cibernet.com to odnj01.cibernet.com:/var/named/INTERNAL.cibernet.com (Done/INTERNAL_Pcibernet_Pcom_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom)

Done/INTERNAL_Pcibernet_Pcom_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom: SerialsAdded/INTERNAL.cibernet.com
	@updatezone scp INTERNAL.cibernet.com odnj01.cibernet.com:/var/named/INTERNAL.cibernet.com INTERNAL_Pcibernet_Pcom_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom
	@date >Done/INTERNAL_Pcibernet_Pcom_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom

SerialsAdded/INTERNAL.cibernet.com: INTERNAL.cibernet.com
	@sed 's/:serial:/'`cat serial`'/g' <INTERNAL.cibernet.com >SerialsAdded/INTERNAL.cibernet.com

#Copy INTERNAL.cibernet.com to adam.cibernet.com:/var/named/INTERNAL.cibernet.com (Done/INTERNAL_Pcibernet_Pcom_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom)

Done/INTERNAL_Pcibernet_Pcom_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom: SerialsAdded/INTERNAL.cibernet.com
	@updatezone scp INTERNAL.cibernet.com adam.cibernet.com:/var/named/INTERNAL.cibernet.com INTERNAL_Pcibernet_Pcom_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom
	@date >Done/INTERNAL_Pcibernet_Pcom_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom

#Copy INTERNAL.1.168.192.in-addr.arpa to odnj01.cibernet.com:/var/named/. (Done/INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P)

Done/INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P: SerialsAdded/INTERNAL.1.168.192.in-addr.arpa
	@updatezone scp INTERNAL.1.168.192.in-addr.arpa odnj01.cibernet.com:/var/named/. INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P
	@date >Done/INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P

SerialsAdded/INTERNAL.1.168.192.in-addr.arpa: INTERNAL.1.168.192.in-addr.arpa
	@sed 's/:serial:/'`cat serial`'/g' <INTERNAL.1.168.192.in-addr.arpa >SerialsAdded/INTERNAL.1.168.192.in-addr.arpa

#Copy INTERNAL.1.168.192.in-addr.arpa to adam.cibernet.com:/var/named/. (Done/INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P)

Done/INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P: SerialsAdded/INTERNAL.1.168.192.in-addr.arpa
	@updatezone scp INTERNAL.1.168.192.in-addr.arpa adam.cibernet.com:/var/named/. INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P
	@date >Done/INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P

#Copy INTERNAL.201.1.10.in-addr.arpa to odnj01.cibernet.com:/var/named/. (Done/INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P)

Done/INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P: SerialsAdded/INTERNAL.201.1.10.in-addr.arpa
	@updatezone scp INTERNAL.201.1.10.in-addr.arpa odnj01.cibernet.com:/var/named/. INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P
	@date >Done/INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P

SerialsAdded/INTERNAL.201.1.10.in-addr.arpa: INTERNAL.201.1.10.in-addr.arpa
	@sed 's/:serial:/'`cat serial`'/g' <INTERNAL.201.1.10.in-addr.arpa >SerialsAdded/INTERNAL.201.1.10.in-addr.arpa

#Copy INTERNAL.201.1.10.in-addr.arpa to adam.cibernet.com:/var/named/. (Done/INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P)

Done/INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P: SerialsAdded/INTERNAL.201.1.10.in-addr.arpa
	@updatezone scp INTERNAL.201.1.10.in-addr.arpa adam.cibernet.com:/var/named/. INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P
	@date >Done/INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P

#Copy INTERNAL.240.1.10.in-addr.arpa to odnj01.cibernet.com:/var/named/. (Done/INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P)

Done/INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P: SerialsAdded/INTERNAL.240.1.10.in-addr.arpa
	@updatezone scp INTERNAL.240.1.10.in-addr.arpa odnj01.cibernet.com:/var/named/. INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P
	@date >Done/INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P

SerialsAdded/INTERNAL.240.1.10.in-addr.arpa: INTERNAL.240.1.10.in-addr.arpa
	@sed 's/:serial:/'`cat serial`'/g' <INTERNAL.240.1.10.in-addr.arpa >SerialsAdded/INTERNAL.240.1.10.in-addr.arpa

#Copy INTERNAL.240.1.10.in-addr.arpa to adam.cibernet.com:/var/named/. (Done/INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P)

Done/INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P: SerialsAdded/INTERNAL.240.1.10.in-addr.arpa
	@updatezone scp INTERNAL.240.1.10.in-addr.arpa adam.cibernet.com:/var/named/. INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P
	@date >Done/INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P

#Copy EXTERNAL.cibernet.com to shell.whatexit.org:/var/named/cibernet.com.zone (Done/EXTERNAL_Pcibernet_Pcom_Sshell_Pwhatexit_Porg_C_Lvar_Lnamed_Lcibernet_Pcom_Pzone)

Done/EXTERNAL_Pcibernet_Pcom_Sshell_Pwhatexit_Porg_C_Lvar_Lnamed_Lcibernet_Pcom_Pzone: SerialsAdded/EXTERNAL.cibernet.com
	@updatezone scp EXTERNAL.cibernet.com shell.whatexit.org:/var/named/cibernet.com.zone EXTERNAL_Pcibernet_Pcom_Sshell_Pwhatexit_Porg_C_Lvar_Lnamed_Lcibernet_Pcom_Pzone
	@date >Done/EXTERNAL_Pcibernet_Pcom_Sshell_Pwhatexit_Porg_C_Lvar_Lnamed_Lcibernet_Pcom_Pzone

SerialsAdded/EXTERNAL.cibernet.com: EXTERNAL.cibernet.com
	@sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.cibernet.com >SerialsAdded/EXTERNAL.cibernet.com

push-all:  Done/INTERNAL_Pcibernet_Pcom_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom Done/INTERNAL_Pcibernet_Pcom_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom Done/INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P Done/INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P Done/INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P Done/INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P Done/INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P Done/INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P Done/EXTERNAL_Pcibernet_Pcom_Sshell_Pwhatexit_Porg_C_Lvar_Lnamed_Lcibernet_Pcom_Pzone

push-local: 

push-remote: Done/INTERNAL_Pcibernet_Pcom_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom Done/INTERNAL_Pcibernet_Pcom_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_LINTERNAL_Pcibernet_Pcom Done/INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P Done/INTERNAL_P1_P168_P192_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P Done/INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P Done/INTERNAL_P201_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P Done/INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sodnj01_Pcibernet_Pcom_C_Lvar_Lnamed_L_P Done/INTERNAL_P240_P1_P10_Pin-addr_Parpa_Sadam_Pcibernet_Pcom_C_Lvar_Lnamed_L_P Done/EXTERNAL_Pcibernet_Pcom_Sshell_Pwhatexit_Porg_C_Lvar_Lnamed_Lcibernet_Pcom_Pzone

