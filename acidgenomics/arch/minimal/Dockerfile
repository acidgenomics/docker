# """
# Install Arch Linux.
# Updated 2020-04-23.
# """

FROM archlinux:latest
MAINTAINER mike@steinbaugh.com

RUN pacman -Syyu --noconfirm && \
    pacman-db-upgrade && \
    pacman -S --noconfirm \
        bash \
        curl \
        git \
        sudo \
        zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
