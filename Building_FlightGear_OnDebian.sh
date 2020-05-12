# Welcome to Building FlightGear OnDebian
# This is the following version of this script.
bfod_ver="0.0.1.20200512.1450"

# This script's intention is to download and build
# dependencies required to build FlightGear and
# FlightGear itself.

# The script follows the KISS principle, each file does one thing only.
# This file defines the variables.


# As is, it will use the latest stable version of each
# component. Should you want to use the dev versions
# simply edit the variables bellow.


#!/bin/bash

# A folder called Games will be created in the users home if it doesn't exist
# and FlightGear will be installed there.
fg_install_dir="$HOME/Games/FlightGear"

# This is the location for source codes and temp files.
fg_temp_files="/dev/shm/FlightGear"

# List of addresses and versions for FlightGear, in the
# following order. PLib, OpenSceneGraph, SimGear.

# PLib
plib_svn="svn://svn.code.sf.net/p/plib/code/trunk"

# OpenSceneGraph
osg_git="https://github.com/openscenegraph/OpenSceneGraph"
osg_version="OpenSceneGraph-3.6"

# SimGear
opensim_git="git://git.code.sf.net/p/flightgear/simgear"

# FlightGear
flghtgear_git="git://git.code.sf.net/p/flightgear/flightgear"

# FlightGear Data
flghtgear_git="git://git.code.sf.net/p/flightgear/fgdata"