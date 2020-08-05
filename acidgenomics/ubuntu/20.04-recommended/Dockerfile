# """
# Install Ubuntu 20.04 LTS (recommended).
# Updated 2020-08-05.
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

# Open default port for RStudio Server.
EXPOSE 8787

CMD ["zsh", "-il"]
