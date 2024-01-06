#!/system/bin/sh
MODDIR=${0%/*}

iptables -t mangle -A POSTROUTING -j TTL --ttl-set 64
