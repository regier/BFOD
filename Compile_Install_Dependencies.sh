#!/bin/bash

# Welcome to Building FlightGear OnDebian
# This is the following version of this script.
bfod_ver="0.0.1.20200513.1110"

# This script's intention is to download and build
# dependencies required to build FlightGear and
# FlightGear itself.

# The script follows the KISS principle, each file does one thing only.

# This file Compiles everything.

alias Build="make -j $(nproc) && make install"
alias CMake='cmake -DCMAKE_BUILD_TYPE=Release -DOpenGL_GL_PREFERENCE=LEGACY'

# Building PLib
cd $fg_temp_files # Enter dir where stuff will be built from.
mkdir -p PLib && cd PLib # Creates work dir for PLib.
CMake $fg_source_files/PLib -DCMAKE_INSTALL_PREFIX="$fg_install_dir"
Build

# Building OSG
cd $fg_temp_files # Enter dir where stuff will be built from.
mkdir -p OSG && cd OSG # Creates work dir for OSG.
CMake $fg_source_files/OSG -DCMAKE_INSTALL_PREFIX="$fg_install_dir"
Build

# Building SimGear
cd $fg_temp_files # Enter dir where stuff will be built from.
mkdir -p SimGear && cd SimGear # Creates work dir for SimGear.
CMake $fg_source_files/SimGear -DCMAKE_INSTALL_PREFIX="$fg_install_dir"

# Building FlightGear
cd $fg_temp_files # Enter dir where stuff will be built from.
mkdir -p FlightGear && cd FlightGear # Creates work dir for FlightGear.
CMake $fg_source_files/FlightGear -DCMAKE_INSTALL_PREFIX="$fg_install_dir"

