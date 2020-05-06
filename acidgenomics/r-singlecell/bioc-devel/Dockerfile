# """
# Install Acid Genomics single-cell packages on Bioconductor devel.
# Updated 2020-05-06.
# """

FROM acidgenomics/r-basejump:bioc-devel
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN ./install.R
WORKDIR /
