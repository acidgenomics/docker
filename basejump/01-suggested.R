library(BiocManager)
library(remotes)
install(c(
    "EnsDb.Hsapiens.v75",
    "gdata",
    "pzfx",
    "rio"
))
install_github("tidyverse/googlesheets4", upgrade = "always")
