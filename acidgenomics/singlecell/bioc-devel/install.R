library(BiocManager)
install(
    pkgs = c(
        "DelayedMatrixStats",
        "Seurat",
        "batchelor",
        "rgdal",
        "sf",
        "spatialreg",
        "splatter"
    )
)
## > install("cole-trapnell-lab/monocle3@0.2.0")
install(
    pkgs = c(
        "hbc/bcbioSingleCell",
        "acidgenomics/Chromium",
        "acidgenomics/pointillism"
    )
)
