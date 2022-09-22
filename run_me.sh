#!/bin/bash -e

export CC=clang
export CXX=clang++

# Check the cmake binary
CMAKE="cmake" ;

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
