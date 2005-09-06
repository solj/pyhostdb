
all: push-local

#Copy SOURCE=EXTERNAL.179.32.64.in-addr.arpa

MS/EXTERNAL.179.32.64.in-addr.arpa: EXTERNAL.179.32.64.in-addr.arpa
	@if [ ! -r MP/EXTERNAL.179.32.64.in-addr.arpa ] ; \
	then \
		echo CREATING MP/EXTERNAL.179.32.64.in-addr.arpa ; \
		@cp EXTERNAL.179.32.64.in-addr.arpa MP/EXTERNAL.179.32.64.in-addr.arpa ; \
	fi
	@if [ ! -r MS/EXTERNAL.179.32.64.in-addr.arpa ] ; \
	then \
		echo CREATING MS/EXTERNAL.179.32.64.in-addr.arpa ; \
		@sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.179.32.64.in-addr.arpa >MS/EXTERNAL.179.32.64.in-addr.arpa ; \
	fi
	@if ! cmp EXTERNAL.179.32.64.in-addr.arpa MP/EXTERNAL.179.32.64.in-addr.arpa  > /dev/null ; \
	then \
		echo UPDATE MP/EXTERNAL.179.32.64.in-addr.arpa ; \
		cp EXTERNAL.179.32.64.in-addr.arpa MP/EXTERNAL.179.32.64.in-addr.arpa ;\
		echo UPDATE MS/EXTERNAL.179.32.64.in-addr.arpa ;\
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.179.32.64.in-addr.arpa >MS/EXTERNAL.179.32.64.in-addr.arpa ; \
	fi

#Copy ...DEST=/tmp/named (_Ltmp_Lnamed--EXTERNAL_P179_P32_P64_Pin-addr_Parpa)

DS/_Ltmp_Lnamed--EXTERNAL_P179_P32_P64_Pin-addr_Parpa: MS/EXTERNAL.179.32.64.in-addr.arpa
	cp MS/EXTERNAL.179.32.64.in-addr.arpa /tmp/named
	@cp MS/EXTERNAL.179.32.64.in-addr.arpa DS/_Ltmp_Lnamed--EXTERNAL_P179_P32_P64_Pin-addr_Parpa

#Copy SOURCE=EXTERNAL.example.com

MS/EXTERNAL.example.com: EXTERNAL.example.com
	@if [ ! -r MP/EXTERNAL.example.com ] ; \
	then \
		echo CREATING MP/EXTERNAL.example.com ; \
		@cp EXTERNAL.example.com MP/EXTERNAL.example.com ; \
	fi
	@if [ ! -r MS/EXTERNAL.example.com ] ; \
	then \
		echo CREATING MS/EXTERNAL.example.com ; \
		@sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.example.com >MS/EXTERNAL.example.com ; \
	fi
	@if ! cmp EXTERNAL.example.com MP/EXTERNAL.example.com  > /dev/null ; \
	then \
		echo UPDATE MP/EXTERNAL.example.com ; \
		cp EXTERNAL.example.com MP/EXTERNAL.example.com ;\
		echo UPDATE MS/EXTERNAL.example.com ;\
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.example.com >MS/EXTERNAL.example.com ; \
	fi

#Copy ...DEST=/tmp/named (_Ltmp_Lnamed--EXTERNAL_Pexample_Pcom)

DS/_Ltmp_Lnamed--EXTERNAL_Pexample_Pcom: MS/EXTERNAL.example.com
	cp MS/EXTERNAL.example.com /tmp/named
	@cp MS/EXTERNAL.example.com DS/_Ltmp_Lnamed--EXTERNAL_Pexample_Pcom

#Copy SOURCE=EXTERNAL.named.conf

MS/EXTERNAL.named.conf: EXTERNAL.named.conf
	@if [ ! -r MP/EXTERNAL.named.conf ] ; \
	then \
		echo CREATING MP/EXTERNAL.named.conf ; \
		@cp EXTERNAL.named.conf MP/EXTERNAL.named.conf ; \
	fi
	@if [ ! -r MS/EXTERNAL.named.conf ] ; \
	then \
		echo CREATING MS/EXTERNAL.named.conf ; \
		@sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.named.conf >MS/EXTERNAL.named.conf ; \
	fi
	@if ! cmp EXTERNAL.named.conf MP/EXTERNAL.named.conf  > /dev/null ; \
	then \
		echo UPDATE MP/EXTERNAL.named.conf ; \
		cp EXTERNAL.named.conf MP/EXTERNAL.named.conf ;\
		echo UPDATE MS/EXTERNAL.named.conf ;\
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.named.conf >MS/EXTERNAL.named.conf ; \
	fi

#Copy ...DEST=/tmp/named (_Ltmp_Lnamed--EXTERNAL_Pnamed_Pconf)

DS/_Ltmp_Lnamed--EXTERNAL_Pnamed_Pconf: MS/EXTERNAL.named.conf
	cp MS/EXTERNAL.named.conf /tmp/named
	@cp MS/EXTERNAL.named.conf DS/_Ltmp_Lnamed--EXTERNAL_Pnamed_Pconf

#Copy SOURCE=EXTERNAL.named.root

MS/EXTERNAL.named.root: EXTERNAL.named.root
	@if [ ! -r MP/EXTERNAL.named.root ] ; \
	then \
		echo CREATING MP/EXTERNAL.named.root ; \
		@cp EXTERNAL.named.root MP/EXTERNAL.named.root ; \
	fi
	@if [ ! -r MS/EXTERNAL.named.root ] ; \
	then \
		echo CREATING MS/EXTERNAL.named.root ; \
		@sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.named.root >MS/EXTERNAL.named.root ; \
	fi
	@if ! cmp EXTERNAL.named.root MP/EXTERNAL.named.root  > /dev/null ; \
	then \
		echo UPDATE MP/EXTERNAL.named.root ; \
		cp EXTERNAL.named.root MP/EXTERNAL.named.root ;\
		echo UPDATE MS/EXTERNAL.named.root ;\
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.named.root >MS/EXTERNAL.named.root ; \
	fi

#Copy ...DEST=/tmp/named (_Ltmp_Lnamed--EXTERNAL_Pnamed_Proot)

DS/_Ltmp_Lnamed--EXTERNAL_Pnamed_Proot: MS/EXTERNAL.named.root
	cp MS/EXTERNAL.named.root /tmp/named
	@cp MS/EXTERNAL.named.root DS/_Ltmp_Lnamed--EXTERNAL_Pnamed_Proot

#Copy SOURCE=EXTERNAL.named.root.new

MS/EXTERNAL.named.root.new: EXTERNAL.named.root.new
	@if [ ! -r MP/EXTERNAL.named.root.new ] ; \
	then \
		echo CREATING MP/EXTERNAL.named.root.new ; \
		@cp EXTERNAL.named.root.new MP/EXTERNAL.named.root.new ; \
	fi
	@if [ ! -r MS/EXTERNAL.named.root.new ] ; \
	then \
		echo CREATING MS/EXTERNAL.named.root.new ; \
		@sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.named.root.new >MS/EXTERNAL.named.root.new ; \
	fi
	@if ! cmp EXTERNAL.named.root.new MP/EXTERNAL.named.root.new  > /dev/null ; \
	then \
		echo UPDATE MP/EXTERNAL.named.root.new ; \
		cp EXTERNAL.named.root.new MP/EXTERNAL.named.root.new ;\
		echo UPDATE MS/EXTERNAL.named.root.new ;\
		sed 's/:serial:/'`cat serial`'/g' <EXTERNAL.named.root.new >MS/EXTERNAL.named.root.new ; \
	fi

#Copy ...DEST=/tmp/named (_Ltmp_Lnamed--EXTERNAL_Pnamed_Proot_Pnew)

DS/_Ltmp_Lnamed--EXTERNAL_Pnamed_Proot_Pnew: MS/EXTERNAL.named.root.new
	cp MS/EXTERNAL.named.root.new /tmp/named
	@cp MS/EXTERNAL.named.root.new DS/_Ltmp_Lnamed--EXTERNAL_Pnamed_Proot_Pnew

#Copy SOURCE=INTERNAL.1.1.10.in-addr.arpa

MS/INTERNAL.1.1.10.in-addr.arpa: INTERNAL.1.1.10.in-addr.arpa
	@if [ ! -r MP/INTERNAL.1.1.10.in-addr.arpa ] ; \
	then \
		echo CREATING MP/INTERNAL.1.1.10.in-addr.arpa ; \
		@cp INTERNAL.1.1.10.in-addr.arpa MP/INTERNAL.1.1.10.in-addr.arpa ; \
	fi
	@if [ ! -r MS/INTERNAL.1.1.10.in-addr.arpa ] ; \
	then \
		echo CREATING MS/INTERNAL.1.1.10.in-addr.arpa ; \
		@sed 's/:serial:/'`cat serial`'/g' <INTERNAL.1.1.10.in-addr.arpa >MS/INTERNAL.1.1.10.in-addr.arpa ; \
	fi
	@if ! cmp INTERNAL.1.1.10.in-addr.arpa MP/INTERNAL.1.1.10.in-addr.arpa  > /dev/null ; \
	then \
		echo UPDATE MP/INTERNAL.1.1.10.in-addr.arpa ; \
		cp INTERNAL.1.1.10.in-addr.arpa MP/INTERNAL.1.1.10.in-addr.arpa ;\
		echo UPDATE MS/INTERNAL.1.1.10.in-addr.arpa ;\
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.1.1.10.in-addr.arpa >MS/INTERNAL.1.1.10.in-addr.arpa ; \
	fi

#Copy ...DEST=/tmp/named (_Ltmp_Lnamed--INTERNAL_P1_P1_P10_Pin-addr_Parpa)

DS/_Ltmp_Lnamed--INTERNAL_P1_P1_P10_Pin-addr_Parpa: MS/INTERNAL.1.1.10.in-addr.arpa
	cp MS/INTERNAL.1.1.10.in-addr.arpa /tmp/named
	@cp MS/INTERNAL.1.1.10.in-addr.arpa DS/_Ltmp_Lnamed--INTERNAL_P1_P1_P10_Pin-addr_Parpa

#Copy SOURCE=INTERNAL.179.32.64.in-addr.arpa

MS/INTERNAL.179.32.64.in-addr.arpa: INTERNAL.179.32.64.in-addr.arpa
	@if [ ! -r MP/INTERNAL.179.32.64.in-addr.arpa ] ; \
	then \
		echo CREATING MP/INTERNAL.179.32.64.in-addr.arpa ; \
		@cp INTERNAL.179.32.64.in-addr.arpa MP/INTERNAL.179.32.64.in-addr.arpa ; \
	fi
	@if [ ! -r MS/INTERNAL.179.32.64.in-addr.arpa ] ; \
	then \
		echo CREATING MS/INTERNAL.179.32.64.in-addr.arpa ; \
		@sed 's/:serial:/'`cat serial`'/g' <INTERNAL.179.32.64.in-addr.arpa >MS/INTERNAL.179.32.64.in-addr.arpa ; \
	fi
	@if ! cmp INTERNAL.179.32.64.in-addr.arpa MP/INTERNAL.179.32.64.in-addr.arpa  > /dev/null ; \
	then \
		echo UPDATE MP/INTERNAL.179.32.64.in-addr.arpa ; \
		cp INTERNAL.179.32.64.in-addr.arpa MP/INTERNAL.179.32.64.in-addr.arpa ;\
		echo UPDATE MS/INTERNAL.179.32.64.in-addr.arpa ;\
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.179.32.64.in-addr.arpa >MS/INTERNAL.179.32.64.in-addr.arpa ; \
	fi

#Copy ...DEST=/tmp/named (_Ltmp_Lnamed--INTERNAL_P179_P32_P64_Pin-addr_Parpa)

DS/_Ltmp_Lnamed--INTERNAL_P179_P32_P64_Pin-addr_Parpa: MS/INTERNAL.179.32.64.in-addr.arpa
	cp MS/INTERNAL.179.32.64.in-addr.arpa /tmp/named
	@cp MS/INTERNAL.179.32.64.in-addr.arpa DS/_Ltmp_Lnamed--INTERNAL_P179_P32_P64_Pin-addr_Parpa

#Copy SOURCE=INTERNAL.example.com

MS/INTERNAL.example.com: INTERNAL.example.com
	@if [ ! -r MP/INTERNAL.example.com ] ; \
	then \
		echo CREATING MP/INTERNAL.example.com ; \
		@cp INTERNAL.example.com MP/INTERNAL.example.com ; \
	fi
	@if [ ! -r MS/INTERNAL.example.com ] ; \
	then \
		echo CREATING MS/INTERNAL.example.com ; \
		@sed 's/:serial:/'`cat serial`'/g' <INTERNAL.example.com >MS/INTERNAL.example.com ; \
	fi
	@if ! cmp INTERNAL.example.com MP/INTERNAL.example.com  > /dev/null ; \
	then \
		echo UPDATE MP/INTERNAL.example.com ; \
		cp INTERNAL.example.com MP/INTERNAL.example.com ;\
		echo UPDATE MS/INTERNAL.example.com ;\
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.example.com >MS/INTERNAL.example.com ; \
	fi

#Copy ...DEST=/tmp/named (_Ltmp_Lnamed--INTERNAL_Pexample_Pcom)

DS/_Ltmp_Lnamed--INTERNAL_Pexample_Pcom: MS/INTERNAL.example.com
	cp MS/INTERNAL.example.com /tmp/named
	@cp MS/INTERNAL.example.com DS/_Ltmp_Lnamed--INTERNAL_Pexample_Pcom

#Copy SOURCE=INTERNAL.named.conf

MS/INTERNAL.named.conf: INTERNAL.named.conf
	@if [ ! -r MP/INTERNAL.named.conf ] ; \
	then \
		echo CREATING MP/INTERNAL.named.conf ; \
		@cp INTERNAL.named.conf MP/INTERNAL.named.conf ; \
	fi
	@if [ ! -r MS/INTERNAL.named.conf ] ; \
	then \
		echo CREATING MS/INTERNAL.named.conf ; \
		@sed 's/:serial:/'`cat serial`'/g' <INTERNAL.named.conf >MS/INTERNAL.named.conf ; \
	fi
	@if ! cmp INTERNAL.named.conf MP/INTERNAL.named.conf  > /dev/null ; \
	then \
		echo UPDATE MP/INTERNAL.named.conf ; \
		cp INTERNAL.named.conf MP/INTERNAL.named.conf ;\
		echo UPDATE MS/INTERNAL.named.conf ;\
		sed 's/:serial:/'`cat serial`'/g' <INTERNAL.named.conf >MS/INTERNAL.named.conf ; \
	fi

#Copy ...DEST=/tmp/named (_Ltmp_Lnamed--INTERNAL_Pnamed_Pconf)

DS/_Ltmp_Lnamed--INTERNAL_Pnamed_Pconf: MS/INTERNAL.named.conf
	cp MS/INTERNAL.named.conf /tmp/named
	@cp MS/INTERNAL.named.conf DS/_Ltmp_Lnamed--INTERNAL_Pnamed_Pconf

push-all:  DS/_Ltmp_Lnamed--EXTERNAL_P179_P32_P64_Pin-addr_Parpa DS/_Ltmp_Lnamed--EXTERNAL_Pexample_Pcom DS/_Ltmp_Lnamed--EXTERNAL_Pnamed_Pconf DS/_Ltmp_Lnamed--EXTERNAL_Pnamed_Proot DS/_Ltmp_Lnamed--EXTERNAL_Pnamed_Proot_Pnew DS/_Ltmp_Lnamed--INTERNAL_P1_P1_P10_Pin-addr_Parpa DS/_Ltmp_Lnamed--INTERNAL_P179_P32_P64_Pin-addr_Parpa DS/_Ltmp_Lnamed--INTERNAL_Pexample_Pcom DS/_Ltmp_Lnamed--INTERNAL_Pnamed_Pconf 

push-local:  DS/_Ltmp_Lnamed--EXTERNAL_P179_P32_P64_Pin-addr_Parpa DS/_Ltmp_Lnamed--EXTERNAL_Pexample_Pcom DS/_Ltmp_Lnamed--EXTERNAL_Pnamed_Pconf DS/_Ltmp_Lnamed--EXTERNAL_Pnamed_Proot DS/_Ltmp_Lnamed--EXTERNAL_Pnamed_Proot_Pnew DS/_Ltmp_Lnamed--INTERNAL_P1_P1_P10_Pin-addr_Parpa DS/_Ltmp_Lnamed--INTERNAL_P179_P32_P64_Pin-addr_Parpa DS/_Ltmp_Lnamed--INTERNAL_Pexample_Pcom DS/_Ltmp_Lnamed--INTERNAL_Pnamed_Pconf

push-remote:  

