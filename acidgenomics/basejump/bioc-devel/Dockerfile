# """
# Install basejump on Bioconductor Devel.
# Updated 2020-03-23.
# """

FROM acidgenomics/bioconductor:devel
MAINTAINER mike@steinbaugh.com

ARG GITHUB_PAT

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
ADD install.R .
RUN R -f install.R
WORKDIR /
