# Acid Genomics
# Bioconductor 3.8 / R 3.5.3

FROM acidgenomics/bioc-release
MAINTAINER mike@steinbaugh.com

WORKDIR /
ARG GITHUB_PAT

RUN R -e 'BiocManager::install("acidgenomics/acidtest")'
RUN R -e 'BiocManager::install("acidgenomics/bioverbs")'
RUN R -e 'BiocManager::install("acidgenomics/goalie")'
RUN R -e 'BiocManager::install("acidgenomics/transformer")'
RUN R -e 'BiocManager::install("acidgenomics/syntactic")'
RUN R -e 'BiocManager::install("acidgenomics/brio")'
RUN R -e 'BiocManager::install("acidgenomics/freerange")'
RUN R -e 'BiocManager::install("acidgenomics/basejump")'
RUN R -e 'BiocManager::install("acidgenomics/minimalism")'
RUN R -e 'BiocManager::install("acidgenomics/firestarter")'

RUN R -e 'BiocManager::install("EnsDb.Hsapiens.v75")'
RUN R -e 'BiocManager::install("pheatmap")'
RUN R -e 'BiocManager::install(c("gdata", "pzfx", "rio"))'
RUN R -e 'BiocManager::install("tidyverse/googlesheets4")'
