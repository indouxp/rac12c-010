#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox
#

set -eu

case $(hostname) in
*1*)
  WHICH=1
  ;;
*2*)
  WHICH=2
  ;;
esac

cat <<EOT >> /home/oracle/grid_env
export ORACLE_SID=+ASM${WHICH:?}
export ORACLE_HOME=\$GRID_HOME
export PATH=\$ORACLE_HOME/bin:\$BASE_PATH

export LD_LIBRARY_PATH=\$ORACLE_HOME/lib:/lib:/usr/lib
export CLASSPATH=\$ORACLE_HOME/JRE:\$ORACLE_HOME/jlib:\$ORACLE_HOME/rdbms/jlib
EOT

cat <<EOT >> /home/oracle/db_env
export ORACLE_SID=cdbrac${WHICH:?}
export ORACLE_HOME=\$DB_HOME
export PATH=\$ORACLE_HOME/bin:\$BASE_PATH

export LD_LIBRARY_PATH=\$ORACLE_HOME/lib:/lib:/usr/lib
export CLASSPATH=\$ORACLE_HOME/JRE:\$ORACLE_HOME/jlib:\$ORACLE_HOME/rdbms/jlib
EOT

date '+%Y%m%d.%H%M%S' >> ${0##*/}.done
