# """
# Install Bioconductor Release.
# Updated 2020-03-01.
# """

FROM bioconductor/bioconductor_docker:latest
MAINTAINER mike@steinbaugh.com

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
