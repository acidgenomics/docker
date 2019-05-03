library(remotes)
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
update_packages(dependencies = TRUE, ask = FALSE)
