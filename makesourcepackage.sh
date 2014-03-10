#!/bin/bash

function help {
   echo "./makesourcepackage.sh <folder> <name> <version>"
   echo "   <folder>  Source folder"
   echo "   <name>    Package name (natnetlinux)"
   echo "   <version> Package version (0.1.0)"
}

if [ -z "$1" -o -z "$2" -o -z "$3" ]
then
   help
   exit 1
fi

SOURCEDIR=$1
NAME=$(echo $2 | tr '[:upper:]' '[:lower:]')
VERSION=$3

XFRM="s/${SOURCEDIR}/${NAME}-${VERSION}/"
TARBALL="${NAME}_${VERSION}.orig.tar.xz"

# Make tarball without version control shit.
tar -cJf ${TARBALL} ${SOURCEDIR} --exclude-vcs --transform ${XFRM}
# List files in tarball to make sure.
tar -tJf ${TARBALL}

