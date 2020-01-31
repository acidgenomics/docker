library(BiocManager)
install(
    pkgs = paste(
        "acidgenomics",
        c(
            "goalie",
            "syntactic",
            "pipette",
            "basejump"
        ),
        sep = "/"
    ),
    dependencies = TRUE
)
