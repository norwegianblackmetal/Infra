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

---

### Дополнительно

За основу взят материал https://sumit-ghosh.com/posts/create-vm-using-libvirt-cloud-images-cloud-init/
