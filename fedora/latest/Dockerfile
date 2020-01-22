# Install Fedora.
# Updated 2019-12-06.

FROM fedora:latest
MAINTAINER mike@steinbaugh.com

RUN dnf -y install bc curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
