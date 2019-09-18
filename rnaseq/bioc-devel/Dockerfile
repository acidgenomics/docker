# Install Acid Genomics RNA-seq packages on Bioconductor Devel.
# Updated 2019-09-18.

FROM acidgenomics/r-bcbio:bioc-devel
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R
WORKDIR /
