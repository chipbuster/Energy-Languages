#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/../vars.sh"

## Installation steps

dl_link="https://download.swift.org/swift-4.2.4-release/ubuntu1604/swift-4.2.4-RELEASE/swift-4.2.4-RELEASE-ubuntu16.04.tar.gz"
tarname="swift-4.2.4-RELEASE-ubuntu16.04.tar.gz"
dirname="swift-4.2.4-RELEASE-ubuntu16.04"
installdir="/usr/local/src/swift-2017-04-13-a-ubuntu16.10"

cd "$TMPDIR"
wget "$dl_link" -O "$tarname"
tar xf "$tarname"
sudo mv "$dirname" "$installdir"
