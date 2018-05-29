#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox
#

set -eu

TARGET="/etc/resolv.conf"
cat <<EOT >> ${TARGET:?}
domain tsystem.gr.jp
search tsystem.gr.jp
nameserver 192.168.0.254
EOT
