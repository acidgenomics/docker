#!/usr/bin/env bash
set -Eeu -o pipefail

# missing: R, parallel, fish
# How to install R?

yum -y update
yum -y install \
    curl \
    git \
    hostname \
    man \
    sudo \
    tree \
    util-linux-user \
    wget \
    which \
    zsh

rm -fr /usr/local/koopa

curl -sSL https://koopa.acidgenomics.com/install | bash -s -- --shared
