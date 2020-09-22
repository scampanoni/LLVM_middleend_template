#!/bin/bash -e

export CC=clang
export CXX=clang++

# Check the cmake binary
command -v cmake3
if test $? -eq 1 ; then
  CMAKE="cmake" ;
else
  CMAKE="cmake3" ;
fi

# Clean
rm -rf build/ ; 

# Build
mkdir build ; 
cd build ; 
${CMAKE} -DCMAKE_INSTALL_PREFIX="~/CAT" -DCMAKE_BUILD_TYPE=Debug ../ ; 
make ;
make install ;
cd ../ 

if ! test -e compile_commands.json ; then
  ln -s build/compile_commands.json ./ ;
fi
