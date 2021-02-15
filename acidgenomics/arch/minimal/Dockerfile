# """
# Install Arch Linux.
# Updated 2020-11-06.
# """

FROM archlinux:latest
MAINTAINER docker@acidgenomics.com

RUN pacman -Syyu --noconfirm && \
    pacman-db-upgrade && \
    pacman -S --noconfirm \
        bash \
        curl \
        git \
        sudo \
        zsh \
 && curl -sSL https://koopa.acidgenomics.com/install \
        | bash -s -- --non-interactive --test \
 && /opt/koopa/os/linux/common/sbin/configure-vm --minimal

CMD ["zsh", "-il"]
