FROM acidgenomics/bioconductor:release
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.R .
RUN ./install.R
WORKDIR /
