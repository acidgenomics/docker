#!/usr/bin/env bash

# shellcheck source=/dev/null
source "$(koopa header bash)"

# > install-r --version='4.0.0'
install-r-cran-binary
update-r-config
install-bioconductor --version='3.11'
koopa install r
