# """
# Install Bioconductor Release.
# Updated 2020-03-02.
# """

FROM acidgenomics/debian:latest
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
