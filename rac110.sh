#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox
#

set -eu

cat <<EOT >> /home/oracle/.bash_profile
# Oracle Settings
export TMP=/tmp
export TMPDIR=\$TMP

export ORACLE_HOSTNAME=c7-1.tsystem.gr.jp
export ORACLE_UNQNAME=CDBRAC
export ORACLE_BASE=/u01/app/oracle
export GRID_HOME=/u01/app/12.2.0.1/grid
export DB_HOME=\$ORACLE_BASE/product/12.2.0.1/db_1
export ORACLE_HOME=\$DB_HOME
export ORACLE_SID=cdbrac1
export ORACLE_TERM=xterm
export BASE_PATH=/usr/sbin:\$PATH
export PATH=\$ORACLE_HOME/bin:\$BASE_PATH

export LD_LIBRARY_PATH=\$ORACLE_HOME/lib:/lib:/usr/lib
export CLASSPATH=\$ORACLE_HOME/JRE:\$ORACLE_HOME/jlib:\$ORACLE_HOME/rdbms/jlib

alias grid_env='. /home/oracle/grid_env'
alias db_env='. /home/oracle/db_env'
EOT
