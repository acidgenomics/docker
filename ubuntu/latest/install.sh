#!/usr/bin/env bash
set -Eeu -o pipefail

# Need to update default R installation.
# https://cran.r-project.org/bin/linux/ubuntu/README.html
# Add to '/etc/apt/sources.list'
# deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/

# Note that root user ignores '/etc/profile.d/' currently and doesn't activate
# koopa. How to fix this?

apt-get update
apt-get -y dist-upgrade
apt-get -y install \
    curl \
    fish \
    git \
    parallel \
    sudo \
    tree \
    wget \
    zsh

rm -fr /var/lib/apt/lists/*
rm -fr /usr/local/koopa

curl -sSL "https://koopa.acidgenomics.com/install" | bash -s -- --shared
