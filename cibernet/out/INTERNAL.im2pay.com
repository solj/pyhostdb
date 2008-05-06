
;

$TTL 1h

@	IN SOA	adam.cibernet.com. hostmaster.cibernet.com. (
			:serial:	;serial (version)
			6h	;refresh period
			1h	;retry refresh this often
			15w	;expiration period
			1h	;Negative caching TTL
		)

                   IN NS      adam.cibernet.com.
                   IN NS      odnj01.cibernet.com.
                   IN NS      oduk01.cibernet.com.
                   IN NS      oduk02.cibernet.com.
gala               IN A       210.210.1.73
                   IN MX 10   crumb.cibernet.com.
                   IN MX 20   us.cibernet.com.
im2pay.com.        IN A       210.210.1.72
                   IN MX 10   crumb.cibernet.com.
                   IN MX 20   us.cibernet.com.
jonathan           IN A       210.210.1.72
                   IN MX 10   crumb.cibernet.com.
                   IN MX 20   us.cibernet.com.
rome               IN A       10.91.40.24
                   IN MX 10   crumb.cibernet.com.
                   IN MX 20   us.cibernet.com.
sprint             IN A       210.210.1.72
                   IN MX 10   crumb.cibernet.com.
                   IN MX 20   us.cibernet.com.
winesap            IN A       10.91.40.25
                   IN MX 10   crumb.cibernet.com.
                   IN MX 20   us.cibernet.com.
www                IN A       210.210.1.72
                   IN MX 10   crumb.cibernet.com.
                   IN MX 20   us.cibernet.com.
www.sprint         IN A       210.210.1.72
                   IN MX 10   crumb.cibernet.com.
                   IN MX 20   us.cibernet.com.
