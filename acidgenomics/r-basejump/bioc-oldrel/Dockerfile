# """
# Install basejump on Bioconductor old release.
# Updated 2020-05-01.
# """

FROM acidgenomics/bioconductor:oldrel
MAINTAINER mike@steinbaugh.com

ARG GITHUB_PAT

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
ADD install.R .
RUN ./install.R
WORKDIR /
