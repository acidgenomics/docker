#!/usr/bin/env Rscript

## Temporary fix for missing source tarballs.
## Updated 2020-11-05.

library(remotes)
install_git("https://git.bioconductor.org/packages/DelayedArray")
install_git("https://git.bioconductor.org/packages/SingleCellExperiment")
