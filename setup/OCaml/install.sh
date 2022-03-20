#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/../vars.sh"

## Installation steps

dl_link="https://github.com/ocaml/ocaml/archive/4.05.0.tar.gz"
tarname="4.05.0.tar.gz"
dirname="ocaml-4.05.0"

cd "$TMPDIR"
wget "$dl_link" -O "$tarname"
rm -rf "$dirname"
tar xf "$tarname"
cd "$dirname"

./configure --prefix /usr
make -j ${NCPUS} world
sudo make install
