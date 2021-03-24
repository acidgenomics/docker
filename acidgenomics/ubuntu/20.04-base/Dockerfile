# """
# Ubuntu 20.04 LTS base image.
# Updated 2021-03-24.
#
# How to get apt package version:
# > apt-cache policy <package>
# """

FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive \
    KOOPA_PREFIX=/opt/koopa
ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    TERM=xterm-256color
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN apt-get update \
 && apt-get \
        --no-install-recommends \
        --quiet \
        --yes \
        install \
            bash=5.0-6ubuntu1.1 \
            bc=1.07.1-2build1 \
            ca-certificates=20210119~20.04.1 \
            coreutils=8.30-3ubuntu2 \
            curl=7.68.0-1ubuntu2.4 \
            findutils=4.7.0-1ubuntu1 \
            git=1:2.25.1-1ubuntu3.1 \
            lsb-release=11.1.0ubuntu2 \
            sudo=1.8.31-1ubuntu1.2 \
 && apt-get clean \
 && rm -frv /var/lib/apt/lists/* \
 && useradd docker \
 && echo 'docker:docker' | chpasswd \
 && mkdir -pv /home/docker \
 && chown 'docker:docker' /home/docker \
 && usermod -a -G sudo docker \
 && echo '%sudo ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/sudo \
 && chmod 0440 /etc/sudoers.d/sudo

USER docker
RUN curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- \
        --non-interactive \
        --prefix="$KOOPA_PREFIX" \
        --verbose \
 && "${KOOPA_PREFIX}/os/linux/common/sbin/configure-system" \
        --base-image \
        --verbose

WORKDIR /home/docker
CMD ["/usr/local/bin/zsh", "-il"]
