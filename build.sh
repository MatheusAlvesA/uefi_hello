#!/bin/bash
set -e
trap "Exiting" INT

# environment variables
SRC_PATH=/usr/src/
EDK_PATH=$SRC_PATH/edk2
APP_PATH=$SRC_PATH/app
PKG_OUTPUT_DIR=$APP_PATH/Build

export PACKAGES_PATH=$EDK_PATH:$APP_PATH
export PYTHON_COMMAND=/usr/bin/python3

cd $EDK_PATH
source edksetup.sh
cd -

# Building BaseTools
# make -C $EDK_PATH/BaseTools

# Cleaning build dir
# rm -rf $PKG_OUTPUT_DIR

build -p main.dsc -m main.inf -t GCC5 -a X64 -b RELEASE -D PKG_OUTPUT_DIR=$PKG_OUTPUT_DIR
