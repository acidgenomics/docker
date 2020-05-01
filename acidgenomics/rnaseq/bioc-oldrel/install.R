options(
    error = quote(quit(status = 1L)),
    warning = quote(quit(status = 1L))
)
library(bb8)
install(
    pkgs = c(
        "DESeq2",
        "apeglm",
        "ashr",
        "edgeR",
        "hexbin",
        "limma",
        "rhdf5"
    )
)
install(
    pkgs = c(
        "acidgenomics/DESeqAnalysis",
        "acidgenomics/acidgsea"
    ),
    dependencies = TRUE
)
