# """
# Install Acid Genomics single-cell packages on Bioconductor devel.
# Updated 2020-05-01.
# """

FROM acidgenomics/basejump:bioc-devel
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN ./install.R
WORKDIR /
