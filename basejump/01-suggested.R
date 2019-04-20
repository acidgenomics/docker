library(BiocManager)
library(remotes)
Sys.setenv("R_REMOTES_UPGRADE" = "always")
install(
    pkgs = c(
        "EnsDb.Hsapiens.v75",
        "gdata",
        "pzfx",
        "rio"
    ),
    dependencies = TRUE
)
install_github(repo = "tidyverse/googlesheets4", dependencies = TRUE)
