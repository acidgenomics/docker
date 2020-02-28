options(warn = 2L)

library(utils)
library(remotes)
library(BiocManager)

## Fix for BiocNeighbors
install.packages(
    pkgs = paste(
        "https://cran.r-project.org",
        "src",
        "contrib",
        "Archive",
        "RcppAnnoy",
        "RcppAnnoy_0.0.14.tar.gz",
        sep = "/"
    ),
    repos = NULL,
    type = "source"
)
## CRAN
install(
    pkgs = c(
        "Seurat",
        "rgdal",
        "sctransform",
        "sf",
        "spatialreg"
    )
)
## Bioconductor
install(
    pkgs = c(
        "BiocNeighbors",
        "BiocSingular",
        "DelayedMatrixStats",
        "batchelor",
        "scater",
        "scran",
        "splatter"
    )
)
## GitHub
install_gitub(
    repo = c(
        "hbc/bcbioSingleCell",
        "acidgenomics/Chromium",
        "acidgenomics/pointillism"
    ),
    upgrade = "never"
)
