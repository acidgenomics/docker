# """
# Install Bioconductor release.
# Updated 2020-11-03.
# """

FROM acidgenomics/bioconductor:base
MAINTAINER docker@acidgenomics.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /
