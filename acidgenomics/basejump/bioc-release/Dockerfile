# """
# Install basejump on Bioconductor Release.
# Updated 2020-03-23.
# """

FROM acidgenomics/bioconductor:release
MAINTAINER mike@steinbaugh.com

ARG GITHUB_PAT

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
ADD install.R .
RUN R -f install.R
WORKDIR /
