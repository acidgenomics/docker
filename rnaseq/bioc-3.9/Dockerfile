# Install Acid Genomics RNA-seq packages on Bioconductor 3.9.
# Updated 2019-09-04.

FROM acidgenomics/r-bcbio:bioc-3.9
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R
WORKDIR /
