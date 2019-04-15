# Refer to https://github.com/Bioconductor/bioc_docker/blob/master/out/release_core/install.R

library(BiocManager)
suppressWarnings(
    install(update = TRUE, ask = FALSE)
)
install(c(
    "remotes",
    "devtools",
    "tidyverse",
    "BiocCheck",
    "covr"
))
