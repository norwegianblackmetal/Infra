#/bin/sh
if [[ -n $1 ]]; then
  virt-install \
    --name=$1 \
    --ram=2048 \
    --vcpus=1 \
    --import \
    --disk path=/var/lib/libvirt/images//var/lib/libvirt/images/$1.qcow2,format=qcow2,size=10 \
    --cloud-init meta-data=meta-data \
    --cloud-init user-data=user-data \
    --os-variant=centos8 \
    --network bridge=virbr0,model=virtio \
    --graphics none
    #--noautoconsole
else
  echo "Set VM-name"
fi
