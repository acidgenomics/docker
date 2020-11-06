# """
# Install Debian (recommended).
# Updated 2020-08-07.
# """

FROM debian:10
MAINTAINER docker@acidgenomics.com

ARG DEBIAN_FRONTEND=noninteractive
ARG TERM=xterm-256color

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
            coreutils \
            curl \
            findutils \
            git \
            gnupg \
            less \
            lsb-release \
            sudo \
            unzip \
            wget \
            zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
