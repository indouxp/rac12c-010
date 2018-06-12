#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox
#

set -eu

TARGET="/etc/security/limits.d/oracle-database-server-12cR2-preinstall.conf"
cat <<EOT >> ${TARGET:?}
oracle   soft   nofile    1024
oracle   hard   nofile    65536
oracle   soft   nproc    16384
oracle   hard   nproc    16384
oracle   soft   stack    10240
oracle   hard   stack    32768
oracle   hard   memlock    134217728
oracle   soft   memlock    134217728
EOT

date '+%Y%m%d.%H%M%S' >> ${0##*/}.done
