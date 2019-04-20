library(BiocManager)
library(remotes)
Sys.setenv("R_REMOTES_UPGRADE" = "always")
install(c(
    "EnsDb.Hsapiens.v75",
    "gdata",
    "pzfx",
    "rio"
))
install_github("tidyverse/googlesheets4", dependencies = TRUE)
