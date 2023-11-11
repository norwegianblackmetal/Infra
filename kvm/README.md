# KVM

### Описание

kvm server на базе Virtual Box.

---

### Трюки

Включить вложенную виртуализацию VirtualBox:

```
VBoxManage.exe list vms                                          # список ВМ
VBoxManage modifyvm <VirtualMachineName> --nested-hw-virt on
```

Включить вложенную виртуализацию HyperV:

```
Set-VMProcessor -VMName hyperv-1 -ExposeVirtualizationExtensions $true
```

Подготовка диска

```
qemu-img create -f qcow2 \
  -b /var/lib/libvirt/images/base/Fedora-Cloud-Base-34-1.2.x86_64.qcow2 \
  -F qcow2 \
  /var/lib/libvirt/images/vm1.qcow2 10G
```

---

### Материалы

https://sumit-ghosh.com/posts/create-vm-using-libvirt-cloud-images-cloud-init/
https://codeofconnor.com/a-faster-way-to-create-virtual-machines-with-cloud-images-and-virt-manager/