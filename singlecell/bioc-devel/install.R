library(BiocManager)
install(
    pkgs = c(
        "DelayedMatrixStats",
        "Seurat",
        "batchelor",
        "rgdal",
        "sf",
        "spatialreg"
    )
)

library(remotes)
install_github("cole-trapnell-lab/monocle3@0.2.0")
install_github("acidgenomics/Chromium")
install_github("acidgenomics/pointillism")
