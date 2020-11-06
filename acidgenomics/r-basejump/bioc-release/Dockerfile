FROM acidgenomics/bioconductor:release
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
ADD install.R .
RUN ./install.R
WORKDIR /
