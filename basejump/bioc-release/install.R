library(remotes)
install_github(
    repo = paste(
        "acidgenomics",
        c(
            "bioverbs",
            "goalie",
            "syntactic",
            "transformer",
            "brio",
            "freerange",
            "basejump",
            "bb8",
            "lintr"
        ),
        sep = "/"
    ),
    dependencies = TRUE
)
