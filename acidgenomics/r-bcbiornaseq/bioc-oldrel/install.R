#!/usr/bin/env Rscript
options(verbose = TRUE)
source("/usr/local/koopa/lang/r/include/header.R")
stopifnot(isTRUE(nzchar(Sys.getenv("GITHUB_PAT"))))
library(bb8)
install.packages(
    pkgs = "https://cran.r-project.org/src/contrib/Archive/mnormt/mnormt_1.5-6.tar.gz",
    repos = NULL
)
install("hbc/bcbioRNASeq", dependencies = TRUE)
