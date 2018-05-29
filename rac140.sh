#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox
#

set -eu

cat <<EOT >> /etc/udev/rules.d/99-oracle-asmdevices.rules
KERNEL=="sd?1", SUBSYSTEM=="block", PROGRAM=="/usr/lib/udev/scsi_id -g -u -d /dev/\$parent", RESULT=="`/usr/lib/udev/scsi_id -g -u -d /dev/sdb`", SYMLINK+="oracleasm/asm-disk1", OWNER="oracle", GROUP="dba", MODE="0660"
KERNEL=="sd?1", SUBSYSTEM=="block", PROGRAM=="/usr/lib/udev/scsi_id -g -u -d /dev/\$parent", RESULT=="`/usr/lib/udev/scsi_id -g -u -d /dev/sdc`", SYMLINK+="oracleasm/asm-disk2", OWNER="oracle", GROUP="dba", MODE="0660"
KERNEL=="sd?1", SUBSYSTEM=="block", PROGRAM=="/usr/lib/udev/scsi_id -g -u -d /dev/\$parent", RESULT=="`/usr/lib/udev/scsi_id -g -u -d /dev/sdd`", SYMLINK+="oracleasm/asm-disk3", OWNER="oracle", GROUP="dba", MODE="0660"
KERNEL=="sd?1", SUBSYSTEM=="block", PROGRAM=="/usr/lib/udev/scsi_id -g -u -d /dev/\$parent", RESULT=="`/usr/lib/udev/scsi_id -g -u -d /dev/sde`", SYMLINK+="oracleasm/asm-disk4", OWNER="oracle", GROUP="dba", MODE="0660"
EOT

