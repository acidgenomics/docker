#!/usr/bin/env bash
set -Eeux -o pipefail

rm -fv /root/.{bashrc,profile}

rm -fr /usr/local/koopa
curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --shared --test
