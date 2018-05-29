#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox
#

set -eu

BACKUP=/etc/chrony.conf.bk`date '+%Y%m%d'`

cp -p /etc/chrony.conf ${BACKUP:?}

sed '/server 0.centos.pool.ntp.org iburst/iserver 192.168.0.254 iburst' ${BACKUP:?} > /etc/chrony.conf
