#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/../vars.sh"

## Installation steps

dl_link="https://downloads.sourceforge.net/project/freepascal/Linux/3.0.2/fpc-3.0.2.x86_64-linux.tar?ts=gAAAAABiNqyqJ-rKWKDERLIN7kEGe_fEFqRllTIll0r4AbTB9kAFSZDfIeCI-0mZO_Jj_FSmpnRcd_W_EV8m43QmILXjtzCFzg%3D%3D&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Ffreepascal%2Ffiles%2FLinux%2F3.0.2%2Ffpc-3.0.2.x86_64-linux.tar%2Fdownload"
tarname="fpc-3.0.2.tar"
dirname="fpc-3.0.2.x86_64-linux"

installdir="/usr/local/src/fpc-3.0.2.x86_64-linux"

curl -Lk -o "$tarname" "$dl_link"
tar xf "$tarname"
cd "$dirname"

sudo mkdir -p "$installdir"
echo -e "$installdir\ny\ny\ny\ny\ny" | sudo ./install.sh
