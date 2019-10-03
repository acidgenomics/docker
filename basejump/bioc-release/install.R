library(BiocManager)
install(
    pkgs = paste(
        "acidgenomics",
        c(
            "bioverbs",
            "goalie",
            "syntactic",
            "transformer",
            "brio",
            "freerange",
            "basejump",
            "bb8"
        ),
        sep = "/"
    ),
    dependencies = TRUE
)
