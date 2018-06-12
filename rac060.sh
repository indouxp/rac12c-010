#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox
#

set -eu

TARGET="/etc/resolv.conf"
cat <<EOT >> ${TARGET:?}
search tsystem.gr.jp
nameserver 192.168.0.254
EOT

date '+%Y%m%d.%H%M%S' >> ${0##*/}.done
