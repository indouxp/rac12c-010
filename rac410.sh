#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox

echo "node1のみ実施"

NODE1=c7-1
NODE2=c7-2

set -eu

DIR=/u01/app/12.2.0.1/grid
if [ ! -d ${DIR:?} ]; then
  echo "${DIR:?} not exist" 1>&2
  exit 1
fi

rpm -Uvh ${DIR:?}/cv/rpm/cvuqdisk*

scp ${DIR:?}/cv/rpm/cvuqdisk* root@${NODE2:?}:/tmp

ssh root@${NODE2:?} rpm -Uvh /tmp/cvuqdisk*

date '+%Y%m%d.%H%M%S' >> ${0##*/}.done
