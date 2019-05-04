library(BiocManager)
library(remotes)
Sys.setenv("R_REMOTES_UPGRADE" = "always")



# monocle 3 alpha
install_github(
    repo = "cole-trapnell-lab/DDRTree",
    ref = "simple-ppt-like"
)
install_github(repo = "cole-trapnell-lab/L1-graph")

# ggrastr and PSL packages aren't configured correctly in `Suggests:`.
# https://github.com/cole-trapnell-lab/monocle-release/blob/monocle3_alpha/DESCRIPTION

install_github(
    repo = "cole-trapnell-lab/monocle-release",
    ref = "monocle3_alpha"
)



# cicero
install_github(repo = "cole-trapnell-lab/cicero")



# garnett
# org.Mm.eg.db will fail to install here when `dependencies = TRUE`.
# install_github(repo = "cole-trapnell-lab/garnett")
