#!/usr/bin/env Rscript
source("/usr/local/koopa/lang/r/include/header.R")
stopifnot(isTRUE(nzchar(Sys.getenv("GITHUB_PAT"))))
library(bb8)
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
        "hbc/bcbioSingleCell",
        "acidgenomics/Chromium",
        "acidgenomics/pointillism"
    ),
    dependencies = TRUE
)
