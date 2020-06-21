# """
# Install Debian full.
# Updated 2020-06-21.
# """

FROM debian:latest
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

# Open default port for RStudio Server.
EXPOSE 8787

CMD ["zsh", "-il"]
