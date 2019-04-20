system2("apt-get install -y libudunits2-dev")
# libgdal > sf > monocle3
system2("apt-get install -y libgdal-dev")
# x11 > rgl > monocle3
system2("apt-get install -y libfreetype6-dev libglu1-mesa-dev libx11-dev xorg")

library(BiocManager)
library(remotes)
Sys.setenv("R_REMOTES_UPGRADE" = "always")

# monocle 3 alpha
# http://cole-trapnell-lab.github.io/monocle-release/monocle3/
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
# https://cole-trapnell-lab.github.io/cicero-release/
install_github(
    repo = "cole-trapnell-lab/cicero",
    dependencies = TRUE
)

# garnett
# https://cole-trapnell-lab.github.io/garnett/
install_github(
    repo = "cole-trapnell-lab/garnett",
    dependencies = TRUE
)
