all: push-local

Done/_Ltmp_Lvar_Lnamed_L112-127.16.113.212.in-addr.arpa.zone: SerialsAdded/EXTERNAL.16.113.212.in-addr.arpa
	updatezone cp EXTERNAL.16.113.212.in-addr.arpa /tmp/var/named/112-127.16.113.212.in-addr.arpa.zone
	date >Done/_Ltmp_Lvar_Lnamed_L112-127.16.113.212.in-addr.arpa.zone

SerialsAdded/EXTERNAL.16.113.212.in-addr.arpa: EXTERNAL.16.113.212.in-addr.arpa
	sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.16.113.212.in-addr.arpa >SerialsAdded/EXTERNAL.16.113.212.in-addr.arpa

Done/_Ltmp_Lvar_Lnamed_L64-127.6.113.212.in-addr.arpa.zone: SerialsAdded/EXTERNAL.6.113.212.in-addr.arpa
	updatezone cp EXTERNAL.6.113.212.in-addr.arpa /tmp/var/named/64-127.6.113.212.in-addr.arpa.zone
	date >Done/_Ltmp_Lvar_Lnamed_L64-127.6.113.212.in-addr.arpa.zone

SerialsAdded/EXTERNAL.6.113.212.in-addr.arpa: EXTERNAL.6.113.212.in-addr.arpa
	sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.6.113.212.in-addr.arpa >SerialsAdded/EXTERNAL.6.113.212.in-addr.arpa

Done/_Ltmp_Lvar_Lnamed_L100.134.66.in-addr.arpa.zone: SerialsAdded/EXTERNAL.100.134.66.in-addr.arpa
	updatezone cp EXTERNAL.100.134.66.in-addr.arpa /tmp/var/named/100.134.66.in-addr.arpa.zone
	date >Done/_Ltmp_Lvar_Lnamed_L100.134.66.in-addr.arpa.zone

SerialsAdded/EXTERNAL.100.134.66.in-addr.arpa: EXTERNAL.100.134.66.in-addr.arpa
	sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.100.134.66.in-addr.arpa >SerialsAdded/EXTERNAL.100.134.66.in-addr.arpa

#Not implemented yet.
#Not implemented yet.
Done/_Ltmp_Lvar_Lnamed_Lcibernet.com..zone: SerialsAdded/INTERNAL.cibernet.com
	updatezone cp INTERNAL.cibernet.com /tmp/var/named/cibernet.com..zone
	date >Done/_Ltmp_Lvar_Lnamed_Lcibernet.com..zone

SerialsAdded/INTERNAL.cibernet.com: INTERNAL.cibernet.com
	sed 's/:serial:/'`cat serial`'/g' <INTERNAL.cibernet.com >SerialsAdded/INTERNAL.cibernet.com

Done/_Ltmp_Lvar_Lnamed_Lcibernet.net..zone: SerialsAdded/INTERNAL.cibernet.com
	updatezone cp INTERNAL.cibernet.com /tmp/var/named/cibernet.net..zone
	date >Done/_Ltmp_Lvar_Lnamed_Lcibernet.net..zone

Done/_Ltmp_Lvar_Lnamed_Lcibernet.biz..zone: SerialsAdded/INTERNAL.cibernet.com
	updatezone cp INTERNAL.cibernet.com /tmp/var/named/cibernet.biz..zone
	date >Done/_Ltmp_Lvar_Lnamed_Lcibernet.biz..zone

Done/_Ltmp_Lvar_Lnamed_L240.1.10.in-addr.arpa.zone: SerialsAdded/INTERNAL.240.1.10.in-addr.arpa
	updatezone cp INTERNAL.240.1.10.in-addr.arpa /tmp/var/named/240.1.10.in-addr.arpa.zone
	date >Done/_Ltmp_Lvar_Lnamed_L240.1.10.in-addr.arpa.zone

SerialsAdded/INTERNAL.240.1.10.in-addr.arpa: INTERNAL.240.1.10.in-addr.arpa
	sed 's/:serial:/'`cat serial`'/g' <INTERNAL.240.1.10.in-addr.arpa >SerialsAdded/INTERNAL.240.1.10.in-addr.arpa

Done/_Ltmp_Lvar_Lnamed_L201.1.10.in-addr.arpa.zone: SerialsAdded/INTERNAL.201.1.10.in-addr.arpa
	updatezone cp INTERNAL.201.1.10.in-addr.arpa /tmp/var/named/201.1.10.in-addr.arpa.zone
	date >Done/_Ltmp_Lvar_Lnamed_L201.1.10.in-addr.arpa.zone

SerialsAdded/INTERNAL.201.1.10.in-addr.arpa: INTERNAL.201.1.10.in-addr.arpa
	sed 's/:serial:/'`cat serial`'/g' <INTERNAL.201.1.10.in-addr.arpa >SerialsAdded/INTERNAL.201.1.10.in-addr.arpa

Done/_Ltmp_Lvar_Lnamed_L1.168.192.in-addr.arpa.zone: SerialsAdded/INTERNAL.1.168.192.in-addr.arpa
	updatezone cp INTERNAL.1.168.192.in-addr.arpa /tmp/var/named/1.168.192.in-addr.arpa.zone
	date >Done/_Ltmp_Lvar_Lnamed_L1.168.192.in-addr.arpa.zone

SerialsAdded/INTERNAL.1.168.192.in-addr.arpa: INTERNAL.1.168.192.in-addr.arpa
	sed 's/:serial:/'`cat serial`'/g' <INTERNAL.1.168.192.in-addr.arpa >SerialsAdded/INTERNAL.1.168.192.in-addr.arpa

push-all: Done/_Ltmp_Lvar_Lnamed_L112-127.16.113.212.in-addr.arpa.zone Done/_Ltmp_Lvar_Lnamed_L64-127.6.113.212.in-addr.arpa.zone Done/_Ltmp_Lvar_Lnamed_L100.134.66.in-addr.arpa.zone Done/_Ltmp_Lvar_Lnamed_Lcibernet.com..zone Done/_Ltmp_Lvar_Lnamed_Lcibernet.net..zone Done/_Ltmp_Lvar_Lnamed_Lcibernet.biz..zone Done/_Ltmp_Lvar_Lnamed_L240.1.10.in-addr.arpa.zone Done/_Ltmp_Lvar_Lnamed_L201.1.10.in-addr.arpa.zone Done/_Ltmp_Lvar_Lnamed_L1.168.192.in-addr.arpa.zone 

push-local: Done/_Ltmp_Lvar_Lnamed_L112-127.16.113.212.in-addr.arpa.zone Done/_Ltmp_Lvar_Lnamed_L64-127.6.113.212.in-addr.arpa.zone Done/_Ltmp_Lvar_Lnamed_L100.134.66.in-addr.arpa.zone Done/_Ltmp_Lvar_Lnamed_Lcibernet.com..zone Done/_Ltmp_Lvar_Lnamed_Lcibernet.net..zone Done/_Ltmp_Lvar_Lnamed_Lcibernet.biz..zone Done/_Ltmp_Lvar_Lnamed_L240.1.10.in-addr.arpa.zone Done/_Ltmp_Lvar_Lnamed_L201.1.10.in-addr.arpa.zone Done/_Ltmp_Lvar_Lnamed_L1.168.192.in-addr.arpa.zone

push-remote: 

