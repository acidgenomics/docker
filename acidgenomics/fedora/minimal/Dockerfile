# """
# Install Fedora (minimal).
# Updated 2020-03-11.
# """

FROM fedora:latest
MAINTAINER mike@steinbaugh.com

# Minimal dependencies required to download and install koopa.
RUN dnf -y install bc curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
