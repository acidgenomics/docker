# Install Alpine Linux.
# Updated 2019-12-06.
#
# Alpine uses ash (Almquist shell) by default.

FROM alpine:latest
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
