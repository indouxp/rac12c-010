#!/bin/sh
# http://kazmax.zpp.jp/linux_beginner/mkswap.html

set -eu

SIZE() {
  swapon -s |
  awk 'BEGIN{
         sum = 0;
       }
       {
         sum += $3;
       }
       END{
         print sum;
       }'
}
     

SIZE

dd if=/dev/zero of=/SWAPFILE bs=1M count=4096
chmod 0600 /SWAPFILE
mkswap /SWAPFILE

swapon /SWAPFILE

SIZE

cat <<EOT >> /etc/fstab
/SWAPFILE                     swap                    swap    defaults            0 0
tmpfs                         /tmp                    tmpfs   defaults,size=2048m 0 0
EOT

date '+%Y%m%d.%H%M%S' >> ${0##*/}.done
