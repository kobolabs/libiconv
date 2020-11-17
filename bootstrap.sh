#!/bin/sh
./gitsub.sh pull
./autogen.sh
./configure --prefix=/ --with-libiconv-prefix=/ --host=arm-linux
make -j4 && make DESTDIR=/chroot install
