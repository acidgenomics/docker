# """
# Install Biocontainers.
# Updated 2020-04-23.
# """

FROM biocontainers/biocontainers:latest
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
