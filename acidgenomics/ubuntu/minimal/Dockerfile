# """
# Install Ubuntu (minimal).
# Updated 2020-04-23.
# """

FROM ubuntu:20.04
MAINTAINER mike@steinbaugh.com

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get \
        --no-install-recommends \
        --quiet \
        --yes \
        install \
            bash \
            bc \
            bzip2 \
            ca-certificates \
            curl \
            git \
            gnupg \
            lsb-release \
            sudo \
            wget \
            zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
