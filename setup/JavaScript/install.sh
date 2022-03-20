#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/../vars.sh"

## Installation steps

dl_link="https://nodejs.org/download/release/v7.9.0/node-v7.9.0-linux-x64.tar.xz"
tarname="node-v7.9.0-linux-x64.tar.xz"
dirname="node-v7.9.0-linux-x64"
installtarget="/usr/local/src/"


cd "$TMPDIR"
wget "$dl_link" -O "$tarname"
tar xf "$tarname"
sudo cp -rf "$dirname" "$installtarget"
