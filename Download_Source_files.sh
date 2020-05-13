#!/bin/bash

# Welcome to Building FlightGear OnDebian
# This is the following version of this script.
bfod_ver="0.0.1.20200513.1110"

# This script's intention is to download and build
# dependencies required to build FlightGear and
# FlightGear itself.

# The script follows the KISS principle, each file does one thing only.

# This file downloads the major dependencies source codes.

# Downloading PLib
git clone --depth=1 $plib_git $fg_source_files/PLib

# Downloading OpenSceneGrap
git clone -b $osg_version --depth=1 $osg_git $fg_source_files/OSG

# Downloading SimGear
git clone -b $fg_version --depth=1 $simgear_git $fg_source_files/SimGear

# Downloading FlightGear
git clone -b $fg_version --depth=1 $flightgear_git $fg_source_files/FlightGear

# Downloading FlightGear Data
git clone -b $fg_version --depth=1 $fggear_git $fg_install_dir/data

