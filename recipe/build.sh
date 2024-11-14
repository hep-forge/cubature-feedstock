#! /usr/bin/bash

mkdir build
cd build

cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX

make -j$(nproc)
make install

cp htest $PREFIX/bin
cp ptest $PREFIX/bin
