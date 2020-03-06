# """
# Install Arch Linux.
# Updated 2020-02-27.
# """

FROM archlinux:latest
MAINTAINER mike@steinbaugh.com

RUN pacman -Syyu --noconfirm && \
    pacman-db-upgrade && \
    pacman -S --noconfirm \
        bash \
        curl \
        git \
        sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
