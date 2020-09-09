# """
# Install basejump on Bioconductor devel.
# Updated 2020-09-09.
# """

FROM acidgenomics/bioconductor:devel
MAINTAINER mike@steinbaugh.com

ARG GITHUB_PAT

WORKDIR /tmp
ADD install.R .
RUN ./install.R
WORKDIR /
