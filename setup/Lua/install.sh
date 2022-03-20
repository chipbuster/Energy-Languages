#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/../vars.sh"

## Installation steps

installdir="/usr/local/src/lua-5.3.3/bin"
tarname="lua-5.3.3.tar.gz"
dirname="lua-5.3.3"

cd "$TMPDIR"
rm -rf "$dirname"
cp "$SCRIPT_DIR/$tarname" .
tar xf "$tarname"
cd "$dirname"
make -j "${NCPUS}" linux

sudo mkdir -p "$installdir"
sudo cp src/lua "$installdir"
sudo cp src/luac "$installdir"

