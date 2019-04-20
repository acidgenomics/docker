library(remotes)
install_github(
    repo = paste(
        "acidgenomics",
        c(
            "bcbioSingleCell",
            "pointillism"
        ),
        sep = "/"
    ),
    dependencies = TRUE,
    upgrade = "always"
)
