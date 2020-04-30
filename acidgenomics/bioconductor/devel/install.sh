#!/usr/bin/env bash
set -Eeu -o pipefail

rm -fr /usr/local/koopa
curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --non-interactive --test

# shellcheck disable=SC1090
force=1 source ~/.config/koopa/activate

configure-vm --bioconductor --r-version=devel --verbose
