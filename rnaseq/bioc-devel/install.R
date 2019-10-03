# Install RNA-seq R packages.
# Updated 2019-09-04.

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

library(remotes)
install_github("acidgenomics/DESeqAnalysis")
install_github("acidgenomics/pfgsea")
