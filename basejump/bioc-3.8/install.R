# rocker versioned images used MRAN instead of CRAN for package installations.
# Overriding this behavior here by setting to Bioconductor repos instead.
options(repos = BiocManager::repositories())

library(BiocManager)
install(update = TRUE, ask = FALSE)
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
    )
)

library(remotes)
Sys.setenv("R_REMOTES_UPGRADE" = "always")
install_github(
    repo = paste(
        "acidgenomics",
        c(
            "lintr",
            "acidtest",
            "bioverbs",
            "goalie",
            "transformer",
            "syntactic",
            "brio",
            "freerange",
            "basejump",
            "acidplots"
        ),
        sep = "/"
    ),
    dependencies = TRUE
)
