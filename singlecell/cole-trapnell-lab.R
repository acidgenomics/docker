# monocle: http://cole-trapnell-lab.github.io/monocle-release/monocle3/
# cicero: https://cole-trapnell-lab.github.io/cicero-release/
# garnett: https://cole-trapnell-lab.github.io/garnett/

library(BiocManager)
library(reticulate)

# Prepare virtual environment using reticulate.
virtualenv_create(envname = "reticulate")
virtualenv_install(
    envname = "reticulate",
    packages = c("umap-learn", "louvain")
)

# monocle 3 alpha
install("monocle")
install("cole-trapnell-lab/DDRTree", ref = "simple-ppt-like")
install("cole-trapnell-lab/L1-graph")
install("cole-trapnell-lab/monocle-release", ref = "monocle3_alpha")

# cicero
install("cole-trapnell-lab/cicero")

# garnett
install("cole-trapnell-lab/garnett")
