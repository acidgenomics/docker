# """
# Install Bioconductor Release.
# Updated 2020-04-13.
# """

FROM bioconductor/bioconductor_docker:latest
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
