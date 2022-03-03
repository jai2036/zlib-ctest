#!/bin/bash
# Author: Jai 
# Every time you need to clean and build , you need to source this from 
# /build directory e.g. 
# $ bash ../run.sh 
if [ -d ../build ]; then
    cd ..
    echo "Working on DIR:"
    pwd
    rm -rf build/*
    echo "Cleaning build.."
    cd build
    cmake ..
    make 
    echo "Build Completed!"
else
    echo "Build directory DOES NOT exist"
fi
