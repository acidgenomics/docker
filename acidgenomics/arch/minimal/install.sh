#!/usr/bin/env bash
set -Eeux -o pipefail

rm -fr /usr/local/koopa
curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --non-interactive --test

rm -fr /tmp/*
