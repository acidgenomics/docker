library(BiocManager)
install("reticulate")
library(reticulate)
virtualenv_create(envname = "reticulate")
virtualenv_install(
    envname = "reticulate",
    packages = c("umap-learn", "louvain")
)
