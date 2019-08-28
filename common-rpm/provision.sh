#!/bin/bash

# Now some base repo stuff
yum -y install epel-release
# Useful development things
yum -y install curl git valgrind vim-enhanced wget
# Singularity requirements
yum -y groupinstall "Development tools"
yum install -y golang openssl-devel libuuid-devel \
  libseccomp-devel squashfs-tools cryptsetup

