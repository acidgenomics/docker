# """
# Install Bioconductor Devel.
# Updated 2020-04-23.
# """

FROM bioconductor/bioconductor_docker:devel
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
