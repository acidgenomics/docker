# Install Acid Genomics single-cell packages on Bioconductor Release.
# Updated 2019-10-03.

FROM acidgenomics/basejump:bioc-release
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R
WORKDIR /
