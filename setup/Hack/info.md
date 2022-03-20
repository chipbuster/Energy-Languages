oHack
====

Version: HipHop VM 3.19.2
Path: /usr/bin

Project Link: https://hacklang.org/
Download Link: https://docs.hhvm.com/hhvm/installation/building-from-source

Prerequisites:

Taken from a list at https://github.com/hhvm/packaging/blob/d24093f96f02b35ceebc9d3db4872490b6587c99/ubuntu-18.04-bionic/debian/control (which is for 18.04) and modified as needed:

  - aspcud
  - autoconf
  - automake
  - binutils-dev
  - bison
  - build-essential
  - cmake
  - curl
  - debhelper (>= 9)
  - flex
  - g++
  - gawk
  - git
  - gperf
  - libboost-all-dev
  - libbz2-dev
  - libc-client-dev
  - libc-client2007e-dev
  - libcap-dev
  - libcurl4-openssl-dev
  - libdwarf-dev
  - libedit-dev
  - libelf-dev
  - libevent-dev
  - libexpat-dev
  - libgd-dev
  - libgmp3-dev
  - libgoogle-glog-dev
  - libgoogle-perftools-dev
  - libiberty-dev
  - libiconv-hook-dev
  - libicu-dev
  - libinotifytools0-dev
  - libjemalloc-dev
  - libkrb5-dev
  - libldap2-dev
  - libmagickwand-dev
  - libmcrypt-dev
  - libmemcached-dev
  - libncurses-dev
  - libnotify-dev
  - libnuma-dev
  - libonig-dev
  - libpcre3-dev
  - libpq-dev
  - libre2-dev
  - libsodium-dev
  - libsqlite3-dev
  - libssl-dev
  - libtbb-dev
  - libtool
  - libxml2-dev
  - libxslt1-dev
  - libyaml-dev
  - python3
  - re2c
  - rsync
  - tzdata
  - unzip
  - wget
  - zlib1g-dev
  - libreadline-dev  (for webscalesqlclient dependency)

Installation Notes:

Order of operations for cloning git repository:
  - Clone repo without submodules
  - Check out the `HHVM-3.19.2` tag
  - Initialize submodules and update

Checking out submodules first leads to issues when changing the tag, which
can dirty the repo.

The install script uses `-DMYSQL_UNIX_SOCK_ADDR=/dev/null` because we don't
need MySQL for these benchmarks. This can be replaced if you want to
install MySQL.

Make sure to build in release mode.

Other: N/A
