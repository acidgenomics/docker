library(BiocManager)
suppressWarnings(
    install(update = TRUE, ask = FALSE)
)
install(
    pkgs = c(
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
    ),
    dependencies = TRUE
)
library(remotes)
install_github(
    repo = "acidgenomics/lintr",
    dependencies = TRUE,
    upgrade = "always"
)
