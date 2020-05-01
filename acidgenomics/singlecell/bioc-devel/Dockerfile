# """
# Install Acid Genomics single-cell packages on Bioconductor devel.
# Updated 2020-04-30.
# """

FROM acidgenomics/basejump:bioc-devel
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R
WORKDIR /
