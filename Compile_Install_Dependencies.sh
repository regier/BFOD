#!/bin/bash

# Welcome to Building FlightGear OnDebian
# This is the following version of this script.
bfod_ver="0.0.1.20200512.1640"

# This script's intention is to download and build
# dependencies required to build FlightGear and
# FlightGear itself.

# The script follows the KISS principle, each file does one thing only.

# This file Compiles everything.



# Building PLib
cmake $fg_source_files/PLib -DCMAKE_INSTALL_PREFIX="fg_install_dir"