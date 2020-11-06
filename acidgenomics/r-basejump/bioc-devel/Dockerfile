FROM acidgenomics/bioconductor:devel
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
ADD install.R .
RUN ./install.R
WORKDIR /
