# """
# Install Bioconductor devel.
# Updated 2020-11-03.
# """

FROM acidgenomics/bioconductor:base
MAINTAINER docker@acidgenomics.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
ADD install.R .
RUN ./install.R
WORKDIR /
