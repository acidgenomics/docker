# """
# Install miniconda3.
# Updated 2020-05-09.#
# 
# See also: continuumio/miniconda3:latest
# Note that we need to touch '.condarc' to enable bioconda if we use this.
# """

FROM acidgenomics/debian:minimal
MAINTAINER docker@acidgenomics.com

RUN koopa update --fast \
 && /usr/koopa/bin/install-miniconda
