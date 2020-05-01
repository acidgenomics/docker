# """
# Install bcbioSingleCell on Bioconductor old release.
# Updated 2020-04-30.
# """

FROM acidgenomics/basejump:bioc-oldrel
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R
WORKDIR /
