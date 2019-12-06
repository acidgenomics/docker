#!/usr/bin/env bash
set -Eeu -o pipefail

yum -y update
yum -y install \
    R \
    chsh \
    curl \
    fish \
    git \
    hostname \
    man \
    parallel \
    top \
    tree \
    uptime \
    wget \
    which \
    zsh

rm -fr /usr/local/koopa

curl -sSL "https://koopa.acidgenomics.com/install" | bash -s -- --shared
