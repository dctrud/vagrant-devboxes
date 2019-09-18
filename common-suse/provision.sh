#!/bin/bash

# Useful development things
zypper -n  install curl git valgrind vim wget
# Singularity requirements
zypper install -n patterns-devel-C-C++-devel_C_C++
zypper install -n libopenssl-devel libuuid-devel \
  libseccomp-devel squashfs cryptsetup

