# rocker versioned images used MRAN instead of CRAN for package installations.
# Overriding this behavior here by setting to Bioconductor repos instead.
options(repos = BiocManager::repositories())

library(BiocManager)
install(
    pkgs = c(
        "BiocCheck",
        "DT",
        "EnsDb.Hsapiens.v75",
        "covr",
        "devtools",
        "rcmdcheck",
        "remotes",
        "roxygen2",
        "acidgenomics/lintr"
    )
)

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
    ),
    dependencies = TRUE
)
