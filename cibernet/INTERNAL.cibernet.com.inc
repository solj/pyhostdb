
;;; START OF INTERNAL.cibernet.com.inc

; This is required to deal with the funny IP address on juice.
; Email from most machines fails when sending to juice.cibernet.com.
; This gives a better priority MX record that won't fail, namedly us.cibernet.com.
juice.cibernet.com.		IN MX 0   us.cibernet.com.
juice.cibernet.com.		IN A	10.1.240.1

;;; END OF INTERNAL.cibernet.com.inc

