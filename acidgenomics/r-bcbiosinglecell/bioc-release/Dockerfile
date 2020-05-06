# """
# Install bcbioSingleCell on Bioconductor release.
# Updated 2020-05-06.
# """

FROM acidgenomics/r-basejump:bioc-release
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN ./install.R
WORKDIR /
