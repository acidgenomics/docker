# """
# Install Alpine Linux.
# Updated 2020-04-23.
#
# Alpine uses ash (Almquist shell) by default.
# """

FROM alpine:latest
MAINTAINER mike@steinbaugh.com

RUN apk update && \
    apk add \
        bash \
        ca-certificates \
        curl \
        git \
        sudo \
        zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
