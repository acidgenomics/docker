# """
# Install Wine on Debian.
# Updated 2020-06-03.
# """

FROM debian:10
MAINTAINER mike@steinbaugh.com

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get \
        --no-install-recommends \
        --quiet \
        --yes \
        install \
            ca-certificates \
            curl \
            git \
            gnupg \
            lsb-release \
            sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

ENTRYPOINT ["wine"]
