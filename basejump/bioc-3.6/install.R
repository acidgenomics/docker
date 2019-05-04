# Override use of MRAN snapshot repo, which has too many outdated dependencies.
repos <- getOption("repos")
repos["CRAN"] <- "https://cloud.r-project.org"
options(repos = repos)

library(BiocInstaller)
biocLite(
    c(
      "DelayedArray",
      "SummarizedExperiment",
      "SingleCellExperiment"
    )
)

install.packages("remotes")
library(remotes)
# If we attempt to set `upgrade = "always"` in `install_github()` call, it will
# error, so set as a global variable instead. This works.
Sys.setenv("R_REMOTES_UPGRADE" = "always")
install_github(
    repo = paste(
        "acidgenomics",
        c(
            "lintr",
            "acidtest",
            "bioverbs",
            "goalie",
            "transformer",
            "syntactic",
            "brio",
            "freerange",
            "basejump",
            "acidplots"
        ),
        sep = "/"
    ),
    dependencies = TRUE
)
