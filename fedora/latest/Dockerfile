# Install Fedora.
# Updated 2020-01-24.

FROM fedora:latest
MAINTAINER mike@steinbaugh.com

ENV FORCE_UNSAFE_CONFIGURE=1

RUN dnf -y install bc curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
