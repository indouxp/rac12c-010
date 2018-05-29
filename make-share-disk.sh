#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox
#
set -eu

# Create the disks and associate them with VirtualBox as virtual media.
VBoxManage createhd --filename asm1.vdi --size 10240 --format VDI --variant Fixed
VBoxManage createhd --filename asm2.vdi --size 10240 --format VDI --variant Fixed
VBoxManage createhd --filename asm3.vdi --size 10240 --format VDI --variant Fixed
VBoxManage createhd --filename asm4.vdi --size 10240 --format VDI --variant Fixed

# Connect them to the VM.
VBoxManage storageattach c7-1 --storagectl "SATA" --port 1 --device 0 --type hdd --medium asm1.vdi --mtype shareable
VBoxManage storageattach c7-1 --storagectl "SATA" --port 2 --device 0 --type hdd --medium asm2.vdi --mtype shareable
VBoxManage storageattach c7-1 --storagectl "SATA" --port 3 --device 0 --type hdd --medium asm3.vdi --mtype shareable
VBoxManage storageattach c7-1 --storagectl "SATA" --port 4 --device 0 --type hdd --medium asm4.vdi --mtype shareable

# Make shareable.
VBoxManage modifyhd asm1.vdi --type shareable
VBoxManage modifyhd asm2.vdi --type shareable
VBoxManage modifyhd asm3.vdi --type shareable
VBoxManage modifyhd asm4.vdi --type shareable
