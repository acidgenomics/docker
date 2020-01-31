# Install Ubuntu 18.04 LTS.
# Updated 2020-01-31.

FROM ubuntu:18.04
MAINTAINER mike@steinbaugh.com

ARG DEBIAN_FRONTEND=noninteractive \
    FORCE_UNSAFE_CONFIGURE=1

RUN apt-get update \
 && apt-get --no-install-recommends --yes install \
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
