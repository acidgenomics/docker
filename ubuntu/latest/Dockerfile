# Install Ubuntu.
# Updated 2019-12-06.

FROM ubuntu:latest
MAINTAINER mike@steinbaugh.com

ARG TERM=xterm-256color

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /
