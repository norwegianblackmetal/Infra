#!/bin/sh
sudo virt-install --name "ftp-server.local" \
	--memory 1024 --vcpus 1 \
	--disk /home/norwegianblackmetal/KVM/ftp-server.qcow2,bus=sata --import \
	--graphics none \
	--os-variant centos8 \
	--network default \
	--cloud-init user-data=/home/norwegianblackmetal/git/infra-scripts/ftp_server/user-data.yaml