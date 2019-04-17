library(BiocManager)
install(c(
    "BiocCheck",
    "DT",
    "Matrix",
    "Matrix.utils",
    "R.utils",
    "SingleCellExperiment",
    "backports",
    "covr",
    "cowplot",
    "curl",
    "devtools",
    "ggrepel",
    "knitr",
    "magrittr",
    "patrick",
    "pbapply",
    "rcmdcheck",
    "remotes",
    "rlang",
    "rmarkdown",
    "roxygen2",
    "sessioninfo",
    "testthat",
    "tidyverse",
    "viridis",
    "xmlparsedata"
))
suppressWarnings(
    install(update = TRUE, ask = FALSE)
)

library(remotes)
install_github("acidgenomics/lintr", upgrade = "always")
