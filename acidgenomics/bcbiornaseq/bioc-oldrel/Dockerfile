# """
# Install bcbioRNASeq on Bioconductor old release.
# Updated 2020-05-01.
# """

FROM acidgenomics/basejump:bioc-oldrel
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN ./install.R
WORKDIR /
