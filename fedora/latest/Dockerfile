# Install Fedora.
# Updated 2019-12-06.

FROM fedora:latest
MAINTAINER mike@steinbaugh.com

ARG TERM=xterm-256color

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /
