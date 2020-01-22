# Install Debian 9.
# Updated 2020-01-22.

FROM debian:9
MAINTAINER mike@steinbaugh.com

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y install bc curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
