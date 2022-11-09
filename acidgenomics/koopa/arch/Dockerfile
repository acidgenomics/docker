# FIXME Prompt isn't getting configured correctly in current build.

# """
# Arch Linux base image.
# Updated 2022-11-09.
#
# How to get the version of a package:
# > pacman -Ss <package>
#
# @seealso
# - https://hub.docker.com/_/archlinux
# """

FROM docker.io/library/archlinux:base-20221106.0.100148

ENV KOOPA_IS_DOCKER=1 \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN pacman -Syy --noconfirm \
 && pacman-db-upgrade \
 && pacman -S --noconfirm \
        'bash' \
        'curl' \
        'git' \
        'perl' \
        'procps' \
        'shadow' \
        'sudo' \
        'unzip' \
 && useradd 'docker' \
 && echo 'docker:docker' | chpasswd \
 && mkdir -p '/home/docker' \
 && chown 'docker:docker' '/home/docker' \
 && usermod -s '/bin/bash' 'docker' \
 && usermod -a -G 'wheel' 'docker' \
 && echo '%wheel ALL=(ALL) NOPASSWD: ALL' > '/etc/sudoers.d/wheel' \
 && chmod '0440' '/etc/sudoers.d/wheel'

USER docker
RUN curl -sSL 'https://koopa.acidgenomics.com/install' \
    | bash -s -- \
        --non-interactive \
        --verbose \
 && koopa system info

WORKDIR /home/docker
CMD ["bash", "-il"]
