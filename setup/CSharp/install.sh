#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/../vars.sh"

## Installation steps

dl_link="https://download.microsoft.com/download/A/F/6/AF610E6A-1D2D-47D8-80B8-F178951A0C72/Binaries/dotnet-dev-ubuntu.16.10-x64.1.0.0-preview2-1-003177.tar.gz"
tarname="dotnet-dev-ubuntu.16.10-x64.1.0.0-preview2-1-003177.tar.gz"

cd "$TMPDIR"
wget "$dl_link" -O "$tarname"
tar xf "$tarname"

echo ""
echo "The above command may have exited with utime or mode errors"
echo "Those can be safely ignored"

sudo cp -rf shared/Microsoft.NETCore.App/1.1.0 /opt/dotnet-core
sudo ln -sf /opt/dotnet-core/dotnet /usr/bin/dotnet
