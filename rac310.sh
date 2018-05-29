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
