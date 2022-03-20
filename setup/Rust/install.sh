#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/../vars.sh"

## Installation steps

dl_link="https://static.rust-lang.org/dist/rust-1.16.0-x86_64-unknown-linux-gnu.tar.gz"
tarname="rust-1.16.0-x86_64-unknown-linux-gnu.tar.gz"
dirname="rust-1.16.0-x86_64-unknown-linux-gnu"
installdir="/usr/local/src/rust-1.16.0/"

cd "$TMPDIR"
wget "$dl_link" -O "$tarname" 
tar xf "$tarname"
cd "$dirname"
sudo ./install.sh --prefix=/usr/local/src/rust-1.16.0
