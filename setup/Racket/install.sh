#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/../vars.sh"

## Installation steps

dl_link="https://download.racket-lang.org/installers/6.8/racket-6.8-x86_64-linux.sh"
scriptname="racket-6.8-x86_64-linux.sh"

cd "$TMPDIR"
curl -LOk "$dl_link"

echo -e "yes\n/usr/local/src/racket-6.8" | sudo sh "$scriptname"
