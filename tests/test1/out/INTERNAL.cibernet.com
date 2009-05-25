
;

$TTL 1h

@	IN SOA	odnj01.cibernet.com. hostmaster.cibernet.com (
			:serial:	;serial (version)
			3h	;refresh period
			1h	;retry refresh this often
			1w	;expiration period
			1h	;minimum TTL
		)

                   IN NS      odnj01
                   IN NS      adam




