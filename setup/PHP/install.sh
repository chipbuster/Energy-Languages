#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/../vars.sh"

## Installation steps

dl_link="https://www.php.net/distributions/php-7.1.4.tar.xz"
tarname="php-7.1.4.tar.xz"
dirname="php-7.1.4"

cd "$TMPDIR"

wget "$dl_link" -O "$tarname"
tar xf "$tarname"
cd "$dirname"
./configure
make -j ${NCPUS}
sudo make install
