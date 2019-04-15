# Refer to https://github.com/Bioconductor/bioc_docker/blob/master/out/release_core/install.R

library(BiocManager)
suppressWarnings(
    install(update = TRUE, ask = FALSE)
)
install(c(
    "BiocCheck",
    "SingleCellExperiment",
    "rcmdcheck",
    "remotes",
    "devtools",
    "roxygen2",
    "covr",
    "tidyverse"
))
