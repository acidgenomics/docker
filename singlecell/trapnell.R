library(BiocManager)
library(remotes)
Sys.setenv("R_REMOTES_UPGRADE" = "always")

# monocle 3 alpha
install_github(
    repo = "cole-trapnell-lab/DDRTree",
    ref = "simple-ppt-like",
    dependencies = TRUE
)
install_github(
    repo = "cole-trapnell-lab/L1-graph",
    dependencies = TRUE
)
install_github(
    repo = "cole-trapnell-lab/monocle-release",
    ref = "monocle3_alpha",
    dependencies = TRUE
)

# cicero
install_github(
    repo = "cole-trapnell-lab/cicero",
    dependencies = TRUE
)

# garnett
install_github(
    repo = "cole-trapnell-lab/garnett",
    dependencies = TRUE
)
