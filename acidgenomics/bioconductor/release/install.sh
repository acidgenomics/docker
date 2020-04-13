#!/usr/bin/env bash
set -Eeux -o pipefail

rm -fr /usr/local/koopa
curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --non-interactive --test

# shellcheck disable=SC1090
force=1 source ~/.config/koopa/activate

install-base --bioconductor

# FIXME This errors out because of LLVM_CONFIG missing.
#venv-create-r-reticulate

#install-r-packages
#update-r-packages
