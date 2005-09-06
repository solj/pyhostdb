
;

$TTL 1h

@	IN SOA	shell.cibernet.com. hostmaster.cibernet.com (
			:serial:	;serial (version)
			3h	;refresh period
			1h	;retry refresh this often
			1w	;expiration period
			1h	;minimum TTL
		)

                   IN NS      shell.cibernet.com.
