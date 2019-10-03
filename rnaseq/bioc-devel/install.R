library(BiocManager)
install(
    pkgs = c(
        "DESeq2",
        "apeglm",
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
