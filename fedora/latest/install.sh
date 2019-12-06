#!/usr/bin/env bash
set -Eeu -o pipefail

yum -y update
yum -y install \
    curl \
    git \
    hostname \
    which
rm -frv /usr/local/koopa
curl -sSL "https://koopa.acidgenomics.com/install" | bash -s -- --shared
