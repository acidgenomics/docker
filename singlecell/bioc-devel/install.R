library(BiocManager)
library(remotes)



## Satija Lab                                                               {{{1
## =============================================================================

## Install Seurat.
if (!isTRUE("Seurat" %in% rownames(installed.packages()))) {
    install("Seurat")
}



## Trapnell Lab                                                             {{{1
## =============================================================================

## Install monocle3 beta.
## https://cole-trapnell-lab.github.io/monocle3/monocle3_docs/
if (!isTRUE("monocle3" %in% rownames(installed.packages()))) {
    install(
        pkgs = c(
            "DelayedMatrixStats",
            "rgdal",
            "sf",
            "spatialreg"
        )
    )
    install_github("cole-trapnell-lab/monocle3")
}

## Install cicero.
if (!isTRUE("cicero" %in% rownames(installed.packages()))) {
    install_github("cole-trapnell-lab/cicero")
}



## Acid Genomics                                                            {{{1
## =============================================================================

install_github(
    repo = paste(
        "acidgenomics",
        c(
            "bcbioSingleCell",
            "Chromium",
            "pointillism"
        ),
        sep = "/"
    ),
    dependencies = TRUE
)
