#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/../vars.sh"

## Installation steps

PATH="$PATH:/usr/local/src/node-v7.9.0-linux-x64/bin"
sudo env "PATH=$PATH" npm install -g typescript@2.3.1
