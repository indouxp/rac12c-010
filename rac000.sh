#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox
# NetworkManagerを止めると、だめかな。20180831

set -eu

#systemctl disable NetworkManager
#systemctl stop NetworkManager

systemctl status network

# 項番順に実行すると、最小インストールの場合は、avahi-daemonはインストールされていない。
systemctl disable avahi-daemon
systemctl stop avahi-daemon

date '+%Y%m%d.%H%M%S' >> ${0##*/}.done
