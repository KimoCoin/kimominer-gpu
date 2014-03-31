#!/bin/sh
CFLAGS="-O2 -march=native -msse2" ./configure --enable-scrypt --enable-opencl
make

if [ -a kimominer.exe ]
then
  echo "stripping kimominer.exe"
  strip kimominer.exe
else
  echo "stripping kimominer"
  strip kimominer
fi

