#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox
#

set -eu

BACKUP="/etc/selinux/config.bk`date '+%Y%m%d'`"
cp -p /etc/selinux/config ${BACKUP:?}
#sed 's/SELINUX=enforcing/SELINUX=permissive/' ${BACKUP:?} > /etc/selinux/config
sed 's/SELINUX=enforcint/SELINUX=disabled/'  ${BACKUP:?} > /etc/selinux/config

date '+%Y%m%d.%H%M%S' >> ${0##*/}.done
