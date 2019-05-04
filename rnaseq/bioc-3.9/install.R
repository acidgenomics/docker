options(repos = BiocManager::repositories())
library(BiocManager)
library(remotes)
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
install_github(
    repo = paste(
        "acidgenomics",
        c(
            "DESeqAnalysis",
            "bcbioRNASeq",
            "pfgsea"
        ),
        sep = "/"
    ),
    dependencies = TRUE,
    upgrade = "always"
)
