library(BiocManager)
install(
    pkgs = paste(
        "acidgenomics",
        c(
            "goalie",
            "syntactic",
            "pipette",
            "basejump",
            "bb8"
        ),
        sep = "/"
    ),
    dependencies = TRUE
)
