#!/usr/bin/env bash

# shellcheck source=/dev/null
source "$(koopa header bash)"

install-r-devel
update-r-config
install-bioconductor --version='3.13'
koopa install r
