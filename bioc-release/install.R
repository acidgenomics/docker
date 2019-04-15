# Refer to https://github.com/Bioconductor/bioc_docker/blob/master/out/release_core/install.R

library(BiocManager)
suppressWarnings(
    install(update = TRUE, ask = FALSE)
)
install(c(
    "BiocCheck",
    "Matrix",
    "Matrix.utils",
    "R.utils",
    "SingleCellExperiment",
    "covr",
    "devtools",
    "patrick",
    "rcmdcheck",
    "remotes",
    "roxygen2",
    "testthat",
    "tidyverse",
    "xmlparsedata"
))
