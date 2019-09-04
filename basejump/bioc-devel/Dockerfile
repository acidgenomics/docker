# Install basejump on Bioconductor Devel.
# Updated 2019-09-04.

FROM acidgenomics/bioconductor:devel
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R
WORKDIR /
