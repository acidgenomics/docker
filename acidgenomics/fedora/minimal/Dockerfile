# """
# Install Fedora (minimal).
# Updated 2020-03-06.
# """

FROM fedora:latest
MAINTAINER mike@steinbaugh.com

RUN dnf -y install bc curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
