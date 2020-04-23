# """
# Install Debian (minimal).
# Updated 2020-04-23.
# """

FROM debian:latest
MAINTAINER mike@steinbaugh.com

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get \
        --no-install-recommends \
        --quiet \
        --yes \
        install \
            bc \
            bzip2 \
            ca-certificates \
            curl \
            git \
            gnupg \
            lsb-release \
            sudo \
            unzip \
            wget

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
