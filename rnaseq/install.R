library(BiocManager)
library(remotes)
install(
    pkgs = c(
        "DESeq2", "apeglm", "edgeR", "limma",
        "hexbin", "rhdf5"
    ),
    dependencies = TRUE
)
install_github(
    repo = paste(
        "acidgenomics",
        c(
            "DESeqAnalysis",
            "pfgsea",
            "bcbioRNASeq"
        ),
        sep = "/"
    ),
    dependencies = TRUE,
    upgrade = "always"
)
