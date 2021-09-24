#!/bin/bash

cd src ;
files="`ls *.{hpp,cpp,h,c} 2> /dev/null`"
tar cfj ../sources.tar.bz2 $files ;
