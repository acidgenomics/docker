# """
# Install miniconda3.
# Updated 2020-05-09.
# """

# Note that we need to touch '.condarc' to enable bioconda if we use this.
# FROM continuumio/miniconda3:latest

FROM acidgenomics/debian:minimal
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /
