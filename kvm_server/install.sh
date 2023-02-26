#!/bin/sh
virt-install -n outsider1.example.org \
	-r 1024 \
	--disk path=/var/lib/libvirt/images/outsider1.example.org.img,size=10 \
	-l ftp://192.168.122.112/pub/inst/ \
	-x ks=ftp://192.168.122.112/pub/ks1.cfg