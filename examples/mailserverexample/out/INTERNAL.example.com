
;

$TTL 1h

@	IN SOA	odnj01.cibernet.com. hostmaster.cibernet.com (
			:serial:	;serial (version)
			3h	;refresh period
			1h	;retry refresh this often
			1w	;expiration period
			1h	;minimum TTL
		)

                   IN NS      odnj01.cibernet.com.
                   IN NS      adam.cibernet.com.
normal             IN A       198.65.112.9
                   IN MX 10   mta1
                   IN MX 20   mta2
msexchange         IN A       198.65.112.10
                   IN MX 0    msexchange
                   IN MX 10   mta1
                   IN MX 20   mta2
mta1               IN A       198.65.112.11
                   IN MX 0    mta1
                   IN MX 20   mta2
mta2               IN A       198.65.112.12
                   IN MX 0    mta2
                   IN MX 10   mta1
