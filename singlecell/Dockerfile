# Acid Genomics
# Bioconductor 3.8 / R 3.5.3

FROM acidgenomics/rnaseq
MAINTAINER mike@steinbaugh.com

WORKDIR /
ARG GITHUB_PAT

RUN R -e 'BiocManager::install("reticulate")'

# Seurat 3
RUN R -e 'BiocManager::install("satijalab/seurat", ref = "release/3.0")'

RUN R -e 'BiocManager::install("acidgenomics/bcbioSingleCell")'
RUN R -e 'BiocManager::install("acidgenomics/pointillism")'



