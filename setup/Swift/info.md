Swift
===

Version: Swift 4.0-dev
Path: /usr/local/src/swift-2017-04-13-a-ubuntu16.10/usr/bin/swiftc

Project Link: https://www.swift.org/download/#releases
Download Link: https://download.swift.org/swift-4.2.4-release/ubuntu1604/swift-4.2.4-RELEASE/swift-4.2.4-RELEASE-ubuntu16.04.tar.gz
Prerequisites

  - binutils 
  - git 
  - libc6-dev 
  - libcurl3 
  - libedit2 
  - libgcc-5-dev 
  - libpython2.7 
  - libsqlite3-0 
  - libstdc++-5-dev 
  - libxml2 
  - pkg-config 
  - tzdata 
  - zlib1g-dev
  - ninja

Installation Notes: N/A
Other:

The path in the makefiles suggests that this is using a nightly binary build
of Swift. Unfortunately, these nightlies no longer appear to be available:
visiting what would seem to be the correct link at the website:

https://download.swift.org/development/ubuntu1610/swift-DEVELOPMENT-SNAPSHOT-2017-04-13-a/swift-DEVELOPMENT-SNAPSHOT-2017-04-13-a-ubuntu16.10.tar.gz

results in a 404 error. In fact, even attempting to download these links from
a known working source, with the ubuntu version changed, results in a 404.
This leads me to conclude that Swift no longer stores binaries for these 
old development versions, or for Ubuntu 16.10.

Cloning the repository and building it is also a mess, since they do some
nonsense with custom scripts which attempt to check out particular git
branches. However, this doesn't work since branches are ephemeral, and 
many of the branches no longer exist, making it impossible to build
the software without knowing which commits those branches were pointing
to on 2017-04-13.

Given all this, I'm going to give up and declare that swift 4.2.4 is good
enough.
