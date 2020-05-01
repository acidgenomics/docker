# """
# Install Acid Genomics single-cell packages on Bioconductor release.
# Updated 2020-05-01.
# """

FROM acidgenomics/basejump:bioc-release
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN ./install.R
WORKDIR /
