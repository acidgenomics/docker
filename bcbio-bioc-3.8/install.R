# rocker versioned images used MRAN instead of CRAN for package installations.
# Overriding this behavior here by setting to Bioconductor repos instead.
options(repos = BiocManager::repositories())
install.packages("remotes")
library(remotes)
Sys.setenv("R_REMOTES_UPGRADE" = "always")
install_github(
    repo = paste(
        "hbc",
        c(
            "bcbioBase",
            "bcbioRNASeq",
            "bcbioSingleCell"
        ),
        sep = "/"
    )
    dependencies = TRUE
)
