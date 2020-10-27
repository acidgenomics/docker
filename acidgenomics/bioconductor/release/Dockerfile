# """
# Install Bioconductor release.
# Updated 2020-10-27.
# """

FROM debian:latest
MAINTAINER mike@steinbaugh.com

ARG BIOC_VERSION="3.12"
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get \
        --no-install-recommends \
        --quiet \
        --yes \
        install \
            bash \
            bc \
            ca-certificates \
            curl \
            git \
            gnupg \
            lsb-release \
            sudo \
            zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
