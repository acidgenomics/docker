# Install Alpine Linux.
# Updated 2019-12-06.

FROM alpine:latest
MAINTAINER mike@steinbaugh.com

RUN apk update && \
    apk upgrade && \
    apk add bash curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /
