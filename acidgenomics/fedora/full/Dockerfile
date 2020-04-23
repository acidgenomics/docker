# """
# Install Fedora (full).
# Updated 2020-04-23.
# """

FROM fedora:latest
MAINTAINER mike@steinbaugh.com

RUN dnf -y install bash bc curl git sudo zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
