#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/../vars.sh"

## Installation steps

dl_link="http://www.cpan.org/src/5.0/perl-5.24.0.tar.xz"
tarname="perl-5.24.0.tar.xz"
dirname="perl-5.24.0"
installdir="/usr/local/src/perl-5.24.0/"


cd "$TMPDIR"

wget "$dl_link" -O "$tarname"
tar xf "$tarname"
cd "$dirname"
./Configure -de -Dprefix="$installdir"
make -j ${NCPUS}
sudo mkdir "$installdir"
sudo make install
