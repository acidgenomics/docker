# """
# Install Kali Linux.
# Updated 2020-02-14.
# """

FROM kalilinux/kali-rolling:latest
MAINTAINER mike@steinbaugh.com

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y install bc curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
