#!/usr/bin/env bash

# shellcheck source=/dev/null
source "$(koopa header bash)"

install-r-devel
install-bioconductor --version='3.13'
