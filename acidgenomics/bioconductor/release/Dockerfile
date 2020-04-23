# """
# Install Bioconductor Release.
# Updated 2020-04-23.
# """

FROM bioconductor/bioconductor_docker:latest
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
