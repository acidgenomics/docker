# Acid Genomics RNA-seq image
# Bioconductor 3.8

FROM acidgenomics/basejump-bioc-3.8
MAINTAINER mike@steinbaugh.com

# Install R packages.
WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R
WORKDIR /
