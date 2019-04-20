library(BiocManager)
suppressWarnings(
    install(update = TRUE, ask = FALSE)
)
install(
    pkgs = c(
        "remotes",
        "devtools",
        "roxygen2",
        "tidyverse",
        "BiocCheck",
        "covr"
    ),
    dependencies = TRUE
)
