# Install Ubuntu 18.04 LTS.
# Updated 2020-01-22.

FROM ubuntu:18.04
MAINTAINER mike@steinbaugh.com

RUN DEBIAN_FRONTEND="noninteractive" && \
    apt-get update && \
    apt-get -y install bc curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
