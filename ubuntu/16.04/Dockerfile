# Install Ubuntu 16.04 LTS.
# Updated 2020-01-22.

FROM ubuntu:16.04
MAINTAINER mike@steinbaugh.com

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y install bc curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
