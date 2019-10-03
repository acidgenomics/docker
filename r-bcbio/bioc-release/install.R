library(remotes)
install_github(
    repo = paste(
        "hbc",
        c(
            "bcbioBase",
            "bcbioRNASeq",
            "bcbioSingleCell"
        ),
        sep = "/"
    )
)
