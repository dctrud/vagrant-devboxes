#!/bin/bash

apt-get update

# Useful development things
apt-get install curl git valgrind vim wget

# Singularity dependencies
apt-get install -y build-essential \
  libssl-dev uuid-dev libgpgme11-dev libseccomp-dev \
  pkg-config squashfs-tools cryptsetup


