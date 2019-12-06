#!/usr/bin/env bash
set -Eeu -o pipefail

apt-get update
apt-get -y dist-upgrade
apt-get -y install curl git sudo
rm -frv /usr/local/koopa
curl -sSL "https://koopa.acidgenomics.com/install" | bash -s -- --shared
# > rm -frv /var/lib/apt/lists/*
