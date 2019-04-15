library(BiocManager)
suppressWarnings(
    install(update = TRUE, ask = FALSE)
)
install(c(
    "remotes",
    "devtools",
    "roxygen2",
    "tidyverse",
    "BiocCheck",
    "covr"
))
