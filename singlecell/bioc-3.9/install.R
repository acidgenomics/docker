library(BiocManager)
install(
    pkgs = c(
        "DelayedMatrixStats",
        "rgdal",
        "sf",
        "spatialreg"
    )
)

library(remotes)
install_github(
    repo = paste(
        "cole-trapnell-lab",
        c(
          "monocle3",
          "cicero"
        ),
        sep = "/"
    )
)
install_github(
    repo = paste(
        "acidgenomics",
        c(
            "Chromium",
            "pointillism"
        ),
        sep = "/"
    ),
    dependencies = TRUE
)
