#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox
#

set -eu

systemctl stop firewalld
systemctl disable firewalld

systemctl enable chronyd.service
systemctl start chronyd.service
