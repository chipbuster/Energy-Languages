#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/../vars.sh"

## Installation steps

dl_link="https://storage.googleapis.com/dart-archive/channels/dev/release/1.24.0-dev.0.0/sdk/dartsdk-linux-x64-release.zip"
zipname="dartsdk-linux-x64-release.zip"
dirname="dart-sdk"

cd "$TMPDIR"
wget "$dl_link" -O "$zipname"
unzip -o "$zipname"

sudo cp -r $dirname/{bin,include,lib,util} /usr
