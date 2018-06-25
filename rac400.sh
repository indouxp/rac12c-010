#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox

set -eu

echo "node1のみ実施"

FILE=/home/oracle/linuxx64_12201_grid_home.zip
if [ ! -f ${FILE:?} ]; then
  echo "${FILE:?} not exist" 1>&2
  exit 1
fi

DIR=/u01/app/12.2.0.1/grid
if [ ! -d ${DIR:?} ]; then
  echo "${DIR:?} not exist" 1>&2
  exit 1
fi

su - oracle -c "cd ${DIR:?} && unzip -q ${FILE:?}"

date '+%Y%m%d.%H%M%S' >> ${0##*/}.done
