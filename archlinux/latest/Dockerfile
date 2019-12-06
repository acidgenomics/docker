# Install Arch Linux.
# Updated 2019-12-06.

FROM archlinux:latest
MAINTAINER mike@steinbaugh.com

RUN pacman -Syyu --noconfirm && \
    pacman-db-upgrade && \
    pacman -S --noconfirm \
        awk \
        bash \
        fish \
        git \
        grep \
        man \
        sudo \
        which \
        zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
