# Acid Genomics single-cell RNA-seq image
# Bioconductor 3.8 / R 3.5.3
#
# See also:
# - https://singularity-hub.org/containers/5533
# - https://stackoverflow.com/questions/12141422

FROM acidgenomics/rnaseq
MAINTAINER mike@steinbaugh.com

# Pass through `GITHUB_PAT` to install R packages from GitHub.
ARG GITHUB_PAT

WORKDIR /tmp

ADD reticulate.R .
RUN R -f reticulate.R

ADD satija.R .
RUN R -f saitja.R

ADD trapnell.R .
RUN R -f trapnell.R

ADD acidgenomics.R .
RUN R -f acidgenomics.R

WORKDIR /
