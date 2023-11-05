# KVM

### Описание

kvm server на базе Virtual Box.

---

### Трюки

Включить вложенную виртуализацию:

```
VBoxManage.exe list vms                                          # список ВМ
VBoxManage modifyvm <VirtualMachineName> --nested-hw-virt on
```

---

### Дополнительно

За основу взят материал https://sumit-ghosh.com/posts/create-vm-using-libvirt-cloud-images-cloud-init/
