#!/usr/bin/env bash

# shellcheck source=/dev/null
source "$(koopa header bash)"

install-r-devel
update-r-config
install-bioconductor --version='3.13'
# Temporary fix for missing source tarballs.
Rscript -e "                                                                   \
    BiocManager::install(                                                      \
        pkgs = paste0(                                                         \
            \"https://git.bioconductor.org/packages/\",                        \
            c(                                                                 \
                \"DelayedArray\",                                              \
                \"SingleCellExperiment\"                                       \
            )                                                                  \
        )                                                                      \
    )                                                                          \
"
koopa install r
