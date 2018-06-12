#!/bin/sh
#

set -eu
#
yum groupinstall "GNOME Desktop" -y
yum install unzip -y
yum install nfs-utils -y

date '+%Y%m%d.%H%M%S' >> ${0##*/}.done
