# """
# Install basejump on Bioconductor release.
# Updated 2020-05-01.
# """

FROM acidgenomics/bioconductor:release
MAINTAINER mike@steinbaugh.com

ARG GITHUB_PAT

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
ADD install.R .
RUN ./install.R
WORKDIR /
