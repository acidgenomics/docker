#!/usr/bin/env bash
set -Eeu -o pipefail

yum -y install epel-release
yum -y update
yum -y install \
    R \
    curl \
    git \
    hostname \
    man \
    parallel \
    sudo \
    tree \
    util-linux-user \
    wget \
    which \
    zsh

rm -fr /usr/local/koopa

curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --shared --test
