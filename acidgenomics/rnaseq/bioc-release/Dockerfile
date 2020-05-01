# """
# Install Acid Genomics RNA-seq packages on Bioconductor release.
# Updated 2020-04-30.
# """

FROM acidgenomics/basejump:bioc-release
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R
WORKDIR /
