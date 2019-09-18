#!/bin/bash

# Now some base repo stuff
pacman -S --noconfirm base-devel
# Useful development things
pacman -S --noconfirm curl git valgrind vim wget
# Singularity requirements
pacman -S --noconfirm squashfs-tools cryptsetup

