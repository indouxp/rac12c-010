#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox

NODE1=c7-1
NODE2=c7-2
DOMAIN=tsystem.gr.jp

set -eu

CMD="ssh oracle@${NODE1:?}"
echo ${CMD:?}

CMD="ssh oracle@${NODE1:?}.${DOMAIN:?}"
echo ${CMD:?}

CMD="ssh oracle@${NODE2:?}"
echo ${CMD:?}

CMD="ssh oracle@${NODE2:?}.${DOMAIN:?}"
echo ${CMD:?}

date '+%Y%m%d.%H%M%S' >> ${0##*/}.done
