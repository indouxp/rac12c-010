#!/bin/sh
# https://oracle-base.com/articles/12c/oracle-db-12cr2-rac-installation-on-oracle-linux-7-using-virtualbox
#

set -eu
# From Public Yum or ULN
yum install -y\
            binutils\
            compat-libstdc++-33 \
            compat-libstdc++-33.i686 \
            gcc \
            gcc-c++ \
            glibc \
            glibc.i686 \
            glibc-devel \
            glibc-devel.i686 \
            ksh \
            libgcc \
            libgcc.i686 \
            libstdc++ \
            libstdc++.i686 \
            libstdc++-devel \
            libstdc++-devel.i686 \
            libaio \
            libaio.i686 \
            libaio-devel \
            libaio-devel.i686 \
            libXext \
            libXext.i686 \
            libXtst \
            libXtst.i686 \
            libX11 \
            libX11.i686 \
            libXau \
            libXau.i686 \
            libxcb \
            libxcb.i686 \
            libXi \
            libXi.i686 \
            make \
            sysstat \
            unixODBC \
            unixODBC-devel \
            zlib-devel \
            zlib-devel.i686 

date '+%Y%m%d.%H%M%S' >> ${0##*/}.done
