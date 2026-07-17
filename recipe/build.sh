#! /usr/bin/bash

mkdir build
cd build

cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_POLICY_VERSION_MINIMUM=3.5

NPROC=$(nproc 2>/dev/null || sysctl -n hw.ncpu)
make -j$NPROC
make install
