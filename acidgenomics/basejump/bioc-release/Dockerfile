# """
# Install basejump on Bioconductor Release.
# Updated 2019-09-18.
# """

FROM acidgenomics/bioconductor:release
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R
WORKDIR /
