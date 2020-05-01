options(
    error = quote(quit(status = 1L)),
    warning = quote(quit(status = 1L))
)
library(bb8)
install(
    pkgs = c(
        "Seurat",
        "batchelor",
        "scater",
        "scran",
        "sctransform",
        "splatter"
    )
)
install(
    pkgs = c(
        "hbc/bcbioSingleCell",
        "acidgenomics/Chromium",
        "acidgenomics/pointillism"
    ),
    dependencies = TRUE
)
