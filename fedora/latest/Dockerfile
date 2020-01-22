# Install Fedora.
# Updated 2020-01-22.

FROM fedora:latest
MAINTAINER mike@steinbaugh.com

# findutils
RUN dnf -y install bc curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
