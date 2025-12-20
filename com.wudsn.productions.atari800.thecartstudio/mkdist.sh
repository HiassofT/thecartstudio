#!/bin/sh

set -e

VER=`date '+%y%m%d'`

if [ $# -ge 1 ] ; then
	VER=$1
fi

NAME=thecart-studio-$VER

cd "$(dirname $0)/tst/out"
zip ../../../../../../dist/"${NAME}" TheCartStudio.jar thecartstudio-*

