#!/bin/sh
sudo virt-install --name "kvm-server.local" \
	--memory 1024 --vcpus 2 \
	--disk /home/norwegianblackmetal/KVM/centos7.0-0.qcow2,bus=sata --import \
	--graphics none \
	--os-variant centos7 \
	--network default