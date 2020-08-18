#!/usr/bin/env Rscript
koopaPrefix <- "/usr/local/koopa"
source(file.path(koopaPrefix, "lang/r/include/header.R"))
install(
    pkgs = c(
        "Seurat",
        "batchelor",
        "scater",
        "scran",
        "sctransform",
        "splatter"
    )
)
install(
    pkgs = c(
        "bcbioSingleCell",
        "Chromium",
        "pointillism"
    ),
    dependencies = TRUE
)
