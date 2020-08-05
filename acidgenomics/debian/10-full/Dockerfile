# """
# Install Debian (full).
# Updated 2020-08-05.
# """

FROM debian:10
MAINTAINER mike@steinbaugh.com

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

# Open default port for RStudio Server.
EXPOSE 8787

CMD ["zsh", "-il"]
