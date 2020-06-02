#!/usr/bin/env bash

# Note that 'winehq-stable' is currently only available on Fedora 31.
# Can use 'winehq-devel' on Fedora 32.

dnf -y update
dnf -y install dnf-plugins-core
dnf config-manager \
    --add-repo https://dl.winehq.org/wine-builds/fedora/31/winehq.repo
dnf -y install \
    winehq-stable \
    xorg-x11-apps \
    xorg-x11-server-Xvfb \
    xorg-x11-xauth

rm -fr /tmp/*
