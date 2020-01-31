# Install Debian 9.
# Updated 2020-01-31.

FROM debian:9
MAINTAINER mike@steinbaugh.com

ARG DEBIAN_FRONTEND=noninteractive \
    FORCE_UNSAFE_CONFIGURE=1

RUN apt-get update \
 && apt-get \
        --no-install-recommends \
        --quiet \
        --yes \
        install \
            bc \
            ca-certificates \
            curl \
            git \
            sudo \
 && rm -fr /var/lib/apt/lists/*

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
