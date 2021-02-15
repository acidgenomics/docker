# """
# Install Miniconda.
# Updated 2020-11-11.
# 
# See also: continuumio/miniconda3:latest
# Note that we need to touch '.condarc' to enable bioconda with that image.
#
# The biocontainers base image also comes preloaded with conda installed, but
# it's a very old, outdated version.
# """

FROM acidgenomics/debian:minimal
MAINTAINER docker@acidgenomics.com

RUN /opt/koopa/bin/install-miniconda
