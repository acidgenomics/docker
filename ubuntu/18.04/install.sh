#!/usr/bin/env bash
set -Eeux -o pipefail

# FIXME Note that koopa currently doesn't activate at login for root user.
# For some reason, scripts in '/etc/profile.d/' are currently ignored for root.
#
# > su -
# Now koopa is accessible. However, the prompt doesn't change.

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

install-debian-base

rm -fr /var/lib/apt/lists/*
