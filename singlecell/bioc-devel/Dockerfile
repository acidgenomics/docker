# Install Acid Genomics single-cell packages on Bioconductor Devel.
# Updated 2019-09-04.

FROM acidgenomics/rnaseq:bioc-devel
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R
WORKDIR /
