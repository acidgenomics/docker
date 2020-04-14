options(warn = 2L)
stopifnot(isTRUE(nzchar(Sys.getenv("GITHUB_PAT"))))
install.packages(
    pkgs = "Rcpp",
    repos = "https://rcppcore.github.io/drat",
    type = "source"
)
library(BiocManager)
install(
    pkgs = paste(
        "acidgenomics",
        c(
            "goalie",
            "syntactic",
            "pipette",
            "basejump",
            "bb8"
        ),
        sep = "/"
    ),
    dependencies = TRUE
)
