#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox
#

set -eu

/sbin/partprobe /dev/sdb1
#/sbin/partprobe /dev/sdc1
#/sbin/partprobe /dev/sdd1
#/sbin/partprobe /dev/sde1

date '+%Y%m%d.%H%M%S' >> ${0##*/}.done
