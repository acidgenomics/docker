# """
# Install Alpine Linux.
# Updated 2020-02-27.
#
# Alpine uses ash (Almquist shell) by default.
# """

FROM alpine:latest
MAINTAINER mike@steinbaugh.com

ARG FORCE_UNSAFE_CONFIGURE=1
ARG PYTHONDONTWRITEBYTECODE=true

RUN apk update && \
    apk add \
        bash \
        ca-certificates \
        curl \
        git \
        sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
