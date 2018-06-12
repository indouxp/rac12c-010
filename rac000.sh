#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox
#

set -eu

systemctl disable NetworkManager
systemctl stop NetworkManager

systemctl status network

date '+%Y%m%d.%H%M%S' >> ${0##*/}.done
