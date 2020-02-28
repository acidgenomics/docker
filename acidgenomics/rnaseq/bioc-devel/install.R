options(warn = 2L)
library(BiocManager)
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
        "acidgenomics/pfgsea"
    )
)
