source("https://bioconductor.org/biocLite.R")
install.packages("remotes")
library(remotes)
biocLite("BiocCheck")
install_github(
    repo = "hbc/bcbioRNASeq",
    dependencies = TRUE,
    upgrade = "always"
)
