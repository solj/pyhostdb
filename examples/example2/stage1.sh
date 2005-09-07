#!/bin/sh

BASE=hostdb.txt-base
ENUM=hostdb.txt-enum

# Turn an old zonefile into a hostdb.txt 'first draft':
zone2hostdb < cibernet.com-originalzone >$BASE

# Generate a list of all the IP addresses allocated:
(
genrange -d example.com 10.1.201.0 256
genrange -d example.com 10.1.240.0 256
genrange -d example.com 10.1.1.0 10.1.1.139
genrange -d example.com 10.1.1.140 10.1.1.250 '$ip\tDHCP_POOL'
genrange -d example.com 10.1.1.251 10.1.1.255
genrange -d example.com 64.32.179.0 256 '#$ip\tex$hex.$DOMAIN\@EXTERNAL'
) > $ENUM

cat $BASE $ENUM | mergeiplists
