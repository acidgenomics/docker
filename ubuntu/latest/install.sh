#!/usr/bin/env bash
set -Eeu -o pipefail

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
