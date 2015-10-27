#!/usr/bin/bash

# Build
# Copy sources
echo Building...
mkdir build
cp -av src ./build
cp $1.gyp ./build/$1.gyp
cd build
gyp $1.gyp --depth .
MSBuild build.sln
