# Acid Genomics
# Bioconductor 3.8 / R 3.5.3

FROM acidgenomics/rnaseq
MAINTAINER mike@steinbaugh.com

ARG GITHUB_PAT

WORKDIR /tmp

RUN python2.7 -m pip install --upgrade --user virtualenv
RUN R -e 'BiocManager::install("reticulate")'

RUN R -e 'BiocManager::install("Seurat")'

ADD cole-trapnell-lab.R .
RUN R -f cole-trapnell-lab.R

RUN R -e 'BiocManager::install("acidgenomics/bcbioSingleCell")'
RUN R -e 'BiocManager::install("acidgenomics/pointillism")'

WORKDIR /

