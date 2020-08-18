#!/usr/bin/env Rscript
koopaPrefix <- "/usr/local/koopa"
source(file.path(koopaPrefix, "lang/r/include/header.R"))
install("bcbioSingleCell", dependencies = TRUE)
