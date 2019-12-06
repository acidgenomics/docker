#!/usr/bin/env bash
set -Eeu -o pipefail

yum -y update
    # chsh \
    # top \
    # uptime \
yum -y install \
    R \
    curl \
    fish \
    git \
    hostname \
    man \
    parallel \
    tree \
    wget \
    which \
    zsh

rm -fr /usr/local/koopa

curl -sSL "https://koopa.acidgenomics.com/install" | bash -s -- --shared
