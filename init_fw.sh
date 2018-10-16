#!/bin/bash

iptables -A INPUT -s 44.33.22.11 -j DROP
echo "Dropping every package sent by 44.33.22.11"

iptables -I OUTPUT -s 192.168.1.100 -j ACCEPT
echo "Accepting every package sent by ADM IP"

echo "Listing the IPTABLE"
iptables -L
