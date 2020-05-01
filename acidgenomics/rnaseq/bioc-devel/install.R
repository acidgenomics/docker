#!/usr/bin/env Rscript
source("/usr/local/koopa/lang/r/include/header.R")
stopifnot(isTRUE(nzchar(Sys.getenv("GITHUB_PAT"))))
library(bb8)
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
        "acidgenomics/DESeqAnalysis",
        "acidgenomics/acidgsea"
    ),
    dependencies = TRUE
)
