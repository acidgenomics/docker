# Acid Genomics basejump toolkit image
# R 3.4.4 / Bioconductor 3.6
#
# See also:
# - rocker Dockerfile
#   https://github.com/rocker-org/rocker/blob/master/r-base/Dockerfile
# - Bioconductor Dockerfile
#   https://github.com/Bioconductor/bioc_docker/blob/master/out/release_base/Dockerfile
# - How to resolve apt-utils warning
#   https://github.com/phusion/baseimage-docker/issues/319

FROM acidgenomics/bioc-3.6
MAINTAINER mike@steinbaugh.com

# Install R packages.
WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R
WORKDIR /
