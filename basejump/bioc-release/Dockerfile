# Install basejump on Bioconductor 3.9.
# Updated 2019-09-04.

FROM acidgenomics/bioconductor:3.9
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R
WORKDIR /
