# """
# Install Alpine Linux.
# Updated 2020-02-14.
#
# Alpine uses ash (Almquist shell) by default.
# """

FROM alpine:latest
MAINTAINER mike@steinbaugh.com

RUN apk update && \
    apk add bash curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
