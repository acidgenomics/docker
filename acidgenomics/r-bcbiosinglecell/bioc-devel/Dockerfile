# """
# Install bcbioSingleCell on Bioconductor devel.
# Updated 2020-05-06.
# """

FROM acidgenomics/r-basejump:bioc-devel
MAINTAINER docker@acidgenomics.com

WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN ./install.R
WORKDIR /
