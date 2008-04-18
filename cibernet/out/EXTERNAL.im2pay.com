
;

$TTL 15m

@	IN SOA	ns2.cibernet.com. hostmaster.cibernet.com. (
			:serial:	;serial (version)
			6h	;refresh period
			1h	;retry refresh this often
			15w	;expiration period
			15m	;minimum TTL
		)

                   IN NS      ns2.cibernet.com.
                   IN NS      ns0.lt.nostrum.com.
gala               IN A       210.210.1.73
                   IN MX 10   debugme1.cibernet.com.
                   IN MX 20   debugme2.cibernet.com.
im2pay.com.        IN A       210.210.1.72
                   IN MX 10   debugme1.cibernet.com.
                   IN MX 20   debugme2.cibernet.com.
jonathan           IN A       210.210.1.72
                   IN MX 10   debugme1.cibernet.com.
                   IN MX 20   debugme2.cibernet.com.
sprint             IN A       210.210.1.72
                   IN MX 10   debugme1.cibernet.com.
                   IN MX 20   debugme2.cibernet.com.
www                IN A       210.210.1.72
                   IN MX 10   debugme1.cibernet.com.
                   IN MX 20   debugme2.cibernet.com.
www.sprint         IN A       210.210.1.72
                   IN MX 10   debugme1.cibernet.com.
                   IN MX 20   debugme2.cibernet.com.
