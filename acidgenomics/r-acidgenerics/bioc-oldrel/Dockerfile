FROM acidgenomics/bioconductor:oldrel
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.R .
RUN ./install.R
WORKDIR /
