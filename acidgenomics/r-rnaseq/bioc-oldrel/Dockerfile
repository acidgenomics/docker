# """
# Install Acid Genomics RNA-seq packages on Bioconductor old release.
# Updated 2020-05-06.
# """

FROM acidgenomics/r-basejump:bioc-oldrel
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN ./install.R
WORKDIR /
