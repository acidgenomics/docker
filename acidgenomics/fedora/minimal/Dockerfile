# """
# Install Fedora (minimal).
# Updated 2020-06-01.
# """

FROM fedora:32
MAINTAINER mike@steinbaugh.com

# Minimal dependencies required to download and install koopa.
RUN dnf -y install bash bc curl git less sudo zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
