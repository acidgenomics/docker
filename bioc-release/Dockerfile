# Acid Genomics
# Bioconductor 3.8 / R 3.5.3
#
# Based on:
# - bioc_docker/release_core2
#   https://hub.docker.com/r/bioconductor/release_core2
#   https://github.com/Bioconductor/bioc_docker
#   https://github.com/Bioconductor/bioc_docker/tree/master/out/release_core
# - rocker/rstudio
#   https://hub.docker.com/r/rocker/rstudio
#   https://github.com/rocker-org/rocker
#   https://github.com/rocker-org/rocker/tree/master/rstudio
#
# Note that pdflatex isn't installed, so PDF manual build checks will fail.

FROM bioconductor/release_core2
MAINTAINER mike@steinbaugh.com

# Pass through `GITHUB_PAT` to install R packages from GitHub.
ARG GITHUB_PAT

WORKDIR /

RUN R -e 'suppressWarnings(BiocManager::install(update = TRUE, ask = FALSE))'
RUN R -e 'BiocManager::install(c("devtools", "rcmdcheck", "remotes", "rlang", "sessioninfo"))'
RUN R -e 'BiocManager::install(c("R.utils", "backports", "curl", "pbapply", "xmlparsedata"))'
RUN R -e 'BiocManager::install(c("Matrix", "Matrix.utils"))'
RUN R -e 'BiocManager::install("SingleCellExperiment")'
RUN R -e 'BiocManager::install(c("knitr", "magrittr", "rmarkdown", "roxygen2"))'
RUN R -e 'BiocManager::install("tidyverse")'
RUN R -e 'BiocManager::install(c("cowplot", "ggrepel", "viridis"))'
RUN R -e 'BiocManager::install("BiocCheck")'
RUN R -e 'BiocManager::install(c("testthat", "patrick"))'
RUN R -e 'BiocManager::install(c("DT", "covr"))'
RUN R -e 'BiocManager::install("acidgenomics/lintr")'
