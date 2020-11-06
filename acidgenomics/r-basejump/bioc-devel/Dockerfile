FROM acidgenomics/bioconductor:devel
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.R .
RUN ./install.R
WORKDIR /
