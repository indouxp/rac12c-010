#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox
#

set -eu

TARGET="/etc/hosts"
cat <<EOT >> ${TARGET:?}
# Public
192.168.0.173   c7-1.tsystem.gr.jp        c7-1
192.168.0.174   c7-2.tsystem.gr.jp        c7-2
# Private
192.168.9.173   c7-1-priv.tsystem.gr.jp   c7-1-priv
192.168.9.174   c7-2-priv.tsystem.gr.jp   c7-2-priv
# Virtual
192.168.0.175   c7-1-vip.tsystem.gr.jp    c7-1-vip
192.168.0.176   c7-2-vip.tsystem.gr.jp    c7-2-vip
# SCAN
#192.168.0.177   c7scan.tsystem.gr.jp c7-scan
#192.168.0.178   c7scan.tsystem.gr.jp c7-scan
#192.168.0.179   c7scan.tsystem.gr.jp c7-scan
EOT
