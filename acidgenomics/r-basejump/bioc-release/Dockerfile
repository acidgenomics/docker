# """
# Install basejump on Bioconductor release.
# Updated 2020-09-09.
# """

FROM acidgenomics/bioconductor:release
MAINTAINER mike@steinbaugh.com

ARG GITHUB_PAT

WORKDIR /tmp
ADD install.R .
RUN ./install.R
WORKDIR /
