#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox
#
set -eu

# Connect them to the VM.
VBoxManage storageattach c7-2 --storagectl "SATA" --port 1 --device 0 --type hdd --medium asm1.vdi --mtype shareable
VBoxManage storageattach c7-2 --storagectl "SATA" --port 2 --device 0 --type hdd --medium asm2.vdi --mtype shareable
VBoxManage storageattach c7-2 --storagectl "SATA" --port 3 --device 0 --type hdd --medium asm3.vdi --mtype shareable
VBoxManage storageattach c7-2 --storagectl "SATA" --port 4 --device 0 --type hdd --medium asm4.vdi --mtype shareable
