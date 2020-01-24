#!/usr/bin/env bash
set -Eeux -o pipefail

rm -fr /usr/local/koopa
curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --shared --test

# shellcheck disable=SC1091
source /usr/local/koopa/activate

install-debian-base
install-python
venv-create-r-reticulate
install-bioconductor-packages

rm -fr /root/.cache
rm -fr /var/lib/apt/lists/*
