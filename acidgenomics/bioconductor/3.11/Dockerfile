# """
# Install Bioconductor old release.
# Updated 2020-11-03.
# """

FROM acidgenomics/bioconductor:base
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /
