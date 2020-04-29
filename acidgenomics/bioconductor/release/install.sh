#!/usr/bin/env bash
set -Eeux -o pipefail

rm -fr /usr/local/koopa
curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --non-interactive --test

# shellcheck disable=SC1090
force=1 source ~/.config/koopa/activate

# Remove rocker install of R and install R 4.0.
rm -fr \
    /usr/local/bin/* \
    /usr/local/lib/R
uninstall-r-cran-binary
install-r-cran-binary

configure-vm --bioconductor
