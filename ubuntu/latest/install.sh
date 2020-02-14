#!/usr/bin/env bash
set -Eeux -o pipefail

rm -fr /usr/local/koopa
curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --shared --test

# shellcheck disable=SC1091
source /usr/local/koopa/activate

configure-vm

rm -fr /tmp/*
