#!/bin/bash
set echo on

# Title
echo "Build everything"
echo "------------------------------------"

# Make 'Binaries' folder
mkdir -p Binaries

# Build Engine
cd Engine
make -f "Build.Linux.mak" all
ERROR=$?
if [ $ERROR -ne 0 ]
then
    echo "Error: "$ERROR && exit
fi
cd ..

# Build Editor
cd Editor
make -f "Build.Linux.mak" all
ERROR=$?
if [ $ERROR -ne 0 ]
then
    echo "Error: "$ERROR && exit
fi
cd ..

echo ""
echo "Engine has been built successfully."
