#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/../vars.sh"

## Installation steps

dl_link="https://repo1.maven.org/maven2/org/jruby/jruby-dist/9.1.7.0/jruby-dist-9.1.7.0-bin.tar.gz"
tarname="jruby-bin-9.1.7.0.tar.gz"
dirname="jruby-9.1.7.0"

cd "$TMPDIR"

wget "$dl_link" -O "$tarname"
tar xf "$tarname"
sudo cp -rf "$dirname" "/usr/local/src"
