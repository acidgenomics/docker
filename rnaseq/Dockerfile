# Acid Genomics
# Bioconductor 3.8 / R 3.5.3

FROM acidgenomics/basejump
MAINTAINER mike@steinbaugh.com

WORKDIR /
ARG GITHUB_PAT

RUN R -e 'BiocManager::install(c("DESeq2", "apeglm", "edgeR", "limma"))'
RUN R -e 'BiocManager::install("acidgenomics/DESeqAnalysis")'
RUN R -e 'BiocManager::install("acidgenomics/pfgsea")'
RUN R -e 'BiocManager::install("acidgenomics/bcbioRNASeq")'
RUN R -e 'BiocManager::install(c("rhdf5", "hexbin"))'
