# Install Ubuntu 14.04 LTS.
# Updated 2019-12-18.

FROM ubuntu:14.04
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
