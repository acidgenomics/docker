#!/usr/bin/env bash
set -Eeu -o pipefail

yum -y install epel-release
yum -y update
yum -y install \
    R \
    curl \
    git \
    man \
    sudo \
    tree \
    wget \
    which \
    zsh

rm -fr /usr/local/koopa

curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --shared --test
