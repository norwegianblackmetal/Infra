#!/bin/sh
sudo virt-install \
	--name vmCentos \
	--cdrom /tmp/CentOS-7-x86_64-Minimal.iso \
	--os-variant rhel7 \
	--memory 500 \
	--cpu host \
	--graphics none \
	--disk size=6 \
#     --location http://localhost/home/god/ \
	--initrd-inject=/home/god/ks.cfg --extra-args "ks=file:/ks.cfg"
