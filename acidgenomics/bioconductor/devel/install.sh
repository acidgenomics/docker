#!/usr/bin/env bash
set -Eeux -o pipefail

rm -fr /usr/local/koopa
curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --non-interactive --test

# shellcheck disable=SC1091
source /usr/local/koopa/activate

install-base --bioconductor
install-r-packages
update-r-packages

rm -fr /tmp/*
