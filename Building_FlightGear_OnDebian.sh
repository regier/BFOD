#!/bin/bash

# Welcome to Building FlightGear OnDebian
# This is the following version of this script.
bfod_ver="0.0.1.20200513.1110"

# This script's intention is to download and build
# dependencies required to build FlightGear and
# FlightGear itself.

# The script follows the KISS principle, each file does one thing only.

# This file defines the variables.

## Variables defining versions to be used.

# Defining version for FlightGear, FlightGear Data and SimGear.
export fg_version="next"

# OpenSceneGraph version
export osg_version="master"

## Variables for folder locations and URLs for Git and SVN repos.

# A folder called Games will be created in the users home if it doesn't exist
# and FlightGear will be installed there.
export fg_install_dir="$HOME/Games/FlightGear"

# This is the location for temp files.
export fg_temp_files="/dev/shm/FlightGear_Temp"

# This is the location for source codes.
export fg_source_files="/dev/shm/FlightGear_Sources"

# List of addresses and versions for FlightGear, in the
# following order. PLib, OpenSceneGraph, SimGear.

# PLib
export plib_git="git://git.code.sf.net/p/libplib/code"

# OpenSceneGraph
export osg_git="https://github.com/openscenegraph/OpenSceneGraph"

# SimGear
export simgear_git="https://git.code.sf.net/p/flightgear/simgear"

# FlightGear
export flightgear_git="https://git.code.sf.net/p/flightgear/flightgear"

# FlightGear Data
export fggear_git="https://git.code.sf.net/p/flightgear/fgdata"

# Creating temp folder and instalation folder as define on the first variables
# of this file.
mkdir -p $fg_install_dir $fg_temp_files $fg_source_files