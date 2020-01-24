# Install Debian 10.
# Updated 2020-01-24.

FROM debian:10
MAINTAINER mike@steinbaugh.com

ENV DEBIAN_FRONTEND=noninteractive \
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
