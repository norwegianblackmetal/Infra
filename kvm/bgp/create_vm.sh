#/bin/sh
if [[ -n $1 ]]; then
  virt-install \
    --name=$1 \
    --ram=2048 \
    --vcpus=1 \
    --import \
    --disk path=/var/lib/libvirt/images/CentOS-8-GenericCloud-8.4.2105-20210603.0.x86_64.qcow2,format=qcow2 \
    --cloud-init meta-data=meta-data \
    --cloud-init user-data=user-data \
    --os-variant=rhel8.4 \
    --network bridge=virbr0,model=virtio \
    --graphics none
    #--noautoconsole
else
  echo "Set VM-name"
fi
