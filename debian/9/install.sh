#!/usr/bin/env bash
set -Eeu -o pipefail

export DEBIAN_FRONTEND="noninteractive"
apt-get update
apt-get -y install \
    bc \
    curl \
    git \
    sudo

rm -fr /usr/local/koopa

curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --shared --test

# shellcheck disable=SC1091
source /usr/local/koopa/activate

configure-vm
