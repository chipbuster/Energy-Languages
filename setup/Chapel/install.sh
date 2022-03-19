#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/../vars.sh"

dl_link="https://github.com/chapel-lang/chapel/releases/download/1.15.0/chapel-1.15.0.tar.gz"
tarname="chapel-1.15.0.tar.gz"
dirname="chapel-1.15.0"

## Installation steps

# Download and enter the directory
cd "$TMPDIR"
wget "$dl_link" -O "$tarname"
tar -xf "$tarname"

pushd "$dirname"

# Follow instructions from webpage
source util/setchplenv.bash
make -j "$NCPUS"

# Move into final location
popd
final_location="/usr/local/src/$dirname"
sudo rm -rf "$final_location"
sudo mv "$dirname" "$final_location"
