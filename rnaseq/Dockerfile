# Acid Genomics RNA-seq image
# Bioconductor 3.8 / R 3.5.3

FROM acidgenomics/basejump
MAINTAINER mike@steinbaugh.com

# Pass through `GITHUB_PAT` to install R packages from GitHub.
ARG GITHUB_PAT

WORKDIR /tmp

ADD install.R .
RUN R -f install.R

WORKDIR /
