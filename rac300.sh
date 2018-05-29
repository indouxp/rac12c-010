#!/bin/sh
# https://access.redhat.com/solutions/32376
# gridSetup.sh実行時に、I/Oスケジューラ・パラメータエラーとなる

for DSK in sdb sdc sdd sde
do
  ANS=$(cat /sys/block/${DSK:?}/queue/scheduler | grep -o '\[.*\]')
  if [ "$ANS" != '[deadline]' ]; then
    echo "${DSK:?}:NO"
    echo 'deadline' > /sys/block/${DSK:?}/queue/scheduler
  else
    echo "${DSK:?}:OK"
  fi
done

