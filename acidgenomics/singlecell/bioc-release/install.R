options(warn = 2L)

library(utils)
library(remotes)
library(BiocManager)

## CRAN
install(
    pkgs = c(
        "Seurat",
        "sctransform"
    )
)
## Bioconductor
install(
    pkgs = c(
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
