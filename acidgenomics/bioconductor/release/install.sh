#!/usr/bin/env bash
set -Eeux -o pipefail

rm -fr /usr/local/koopa
curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --non-interactive --test

# shellcheck disable=SC1091
source /usr/local/koopa/activate

install-debian-base --dev
install-python
venv-create-r-reticulate
install-r-packages

rm -fr /root/.cache
rm -fr /var/lib/apt/lists/*
