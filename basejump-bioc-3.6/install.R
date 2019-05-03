install.packages("remotes")
library(remotes)
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
    dependencies = TRUE,
    upgrade = "always"
)
update_packages(dependencies = TRUE, upgrade = "always")
