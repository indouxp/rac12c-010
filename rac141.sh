#!/bin/sh
# http://www.oracle.com/technetwork/jp/database/enterprise-edition/documentation/racdb12201-inst-linux-x64-3795525-ja.pdf
#

set -eu

/sbin/udevadm control --reload-rules

/sbin/start_udev

date '+%Y%m%d.%H%M%S' >> ${0##*/}.done
