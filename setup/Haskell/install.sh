#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/../vars.sh"

## Installation steps

dl_link="https://downloads.haskell.org/~ghc/8.0.2/ghc-8.0.2-x86_64-deb8-linux.tar.xz"
tarname="ghc-8.0.2-x86_64-deb8-linux.tar.xz"
dirname="ghc-8.0.2"

installdir="/usr/local/src/ghc-8.0.2/"

cd "$TMPDIR"

wget "$dl_link" -O "$tarname"
tar xf "$tarname"
cd "$dirname"
./configure --prefix="$installdir"
sudo make install
