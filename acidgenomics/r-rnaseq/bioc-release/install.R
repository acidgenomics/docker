#!/usr/bin/env Rscript
koopaPrefix <- "/usr/local/koopa"
source(file.path(koopaPrefix, "lang/r/include/header.R"))
install(
    pkgs = c(
        "DESeq2",
        "apeglm",
        "ashr",
        "edgeR",
        "hexbin",
        "limma",
        "rhdf5"
    )
)
install(
    pkgs = c(
        "DESeqAnalysis",
        "acidgsea"
    ),
    dependencies = TRUE
)
