#!/bin/sh

OUT=hostdb-orig.txt

genrange  >$OUT  -d example.com 10.1.1.0 10.1.1.139
genrange >>$OUT  -d example.com 10.1.1.140 10.1.1.250 '$ip\tDHCP_POOL'
genrange >>$OUT  -d example.com 10.1.1.250 10.1.1.255
genrange >>$OUT  -d example.com 64.32.179.0 256  '#$ip\tex$hex.$DOMAIN\@EXTERNAL'

