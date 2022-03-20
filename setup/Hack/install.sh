#/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/../vars.sh"

## Installation steps


## Install deps
sudo apt-get install\
  aspcud\
  autoconf\
  automake\
  binutils-dev\
  bison\
  build-essential\
  cmake\
  curl\
  debhelper\
  flex\
  g++\
  gawk\
  git\
  gperf\
  libboost-all-dev\
  libbz2-dev\
  libc-client-dev\
  libc-client2007e-dev\
  libcap-dev\
  libcurl4-openssl-dev\
  libdwarf-dev\
  libedit-dev\
  libelf-dev\
  libevent-dev\
  libexpat-dev\
  libgd-dev\
  libgmp3-dev\
  libgoogle-glog-dev\
  libgoogle-perftools-dev\
  libiberty-dev\
  libiconv-hook-dev\
  libicu-dev\
  libinotifytools0-dev\
  libjemalloc-dev\
  libkrb5-dev\
  libldap2-dev\
  libmagickwand-dev\
  libmcrypt-dev\
  libmemcached-dev\
  libncurses-dev\
  libnotify-dev\
  libnuma-dev\
  libonig-dev\
  libpcre3-dev\
  libpq-dev\
  libre2-dev\
  libsodium-dev\
  libsqlite3-dev\
  libssl-dev\
  libtbb-dev\
  libtool\
  libxml2-dev\
  libxslt1-dev\
  libyaml-dev\
  python3\
  re2c\
  rsync\
  tzdata\
  unzip\
  wget\
  zlib1g-dev\
  libreadline-dev

cd "$TMPDIR"
rm -rf hhvm
git clone https://github.com/facebook/hhvm.git
cd hhvm
git checkout tags/HHVM-3.19.2
git submodule init
git submodule update --init

# Update proxygen (this shouldn't be needed, but it is)
pushd third-party/proxygen/src
git submodule update --init
popd

mkdir build
cd build
cmake -DMYSQL_UNIX_SOCK_ADDR=/dev/null -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr ..

make -j "$NCPUS"
sudo make install
