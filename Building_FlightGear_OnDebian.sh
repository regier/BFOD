# Welcome to Building FlightGear OnDebian
# This is the following version of this script.
bfod_ver="0.0.1.20200512.0023"

# This script's intention is to download and build
# dependencies required to build FlightGear and
# FlightGear itself.

# As is, it will use the latest stable version of each
# component. Should you want to use the dev versions
# simply edit the variables bellow.


#!/bin/bash

# List of addreses and versions for FlightGear in the
# following order. PLib, OpenSceneGraph, SimGear.

# PLib
plib_svn="svn://svn.code.sf.net/p/plib/code/trunk plib-code"

# OpenSceneGraph
osg_git="https://github.com/openscenegraph/OpenSceneGraph"
osg_version="OpenSceneGraph-3.6"
