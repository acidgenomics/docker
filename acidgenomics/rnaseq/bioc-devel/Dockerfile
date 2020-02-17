# """
# Install Acid Genomics RNA-seq packages on Bioconductor Devel.
# Updated 2019-10-03.
# """

FROM acidgenomics/basejump:bioc-devel
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R
WORKDIR /
