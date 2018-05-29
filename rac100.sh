#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox
#

set -eu

mkdir -p /u01/app/12.2.0.1/grid
mkdir -p /u01/app/oracle/product/12.2.0.1/db_1
chown -R oracle:oinstall /u01
chmod -R 775 /u01/
