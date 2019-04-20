# python3 doesn't currently work right for virtual environments with this image.
# > system2("apt-get install -y python3-venv")
# > system2("python3 -m venv ~/.virtualenvs/reticulate")

system2("python2.7 -m pip install --upgrade --user virtualenv")

library(BiocManager)
install("reticulate")

library(reticulate)
virtualenv_create(envname = "reticulate")
virtualenv_install(
    envname = "reticulate",
    packages = c("umap-learn", "louvain")
)
