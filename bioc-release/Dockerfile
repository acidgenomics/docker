# Acid Genomics
# Bioconductor 3.8 / R 3.5.3
#
# Based on:
# - bioc_docker
#   https://github.com/Bioconductor/bioc_docker
# - rocker
#   https://github.com/rocker-org/rocker/tree/master/rstudio
#
# Dockerfile links:
# - release_base2
#   https://github.com/Bioconductor/bioc_docker/tree/master/out/release_base
# - release_core2
#   This adds additional commonly used Bioconductor packages.
#   https://hub.docker.com/r/bioconductor/release_core2/
#   https://github.com/Bioconductor/bioc_docker/tree/master/out/release_core
# - tidyverse
#   https://github.com/rocker-org/rocker-versioned/blob/master/tidyverse/3.5.2/Dockerfile

FROM bioconductor/release_core2
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp

ADD install.R .
RUN R -f install.R
