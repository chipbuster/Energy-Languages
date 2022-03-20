#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/../vars.sh"

## Installation steps

dl_link="https://cache.ruby-lang.org/pub/ruby/2.4/ruby-2.4.1.tar.xz"
tarname="ruby-2.4.1.tar.xz"
dirname="ruby-2.4.1"
installdir="/usr/local/src/ruby"

cd "$TMPDIR"
wget "$dl_link" -O "$tarname"
tar -xf "$tarname"
cd "$dirname"

./configure --prefix="$installdir"
make -j ${NCPUS}
sudo make install
