# """
# Ubuntu 20.04 LTS base image.
# Updated 2021-09-21.
#
# How to get apt package version:
# > apt-cache policy <package>
# """

# FIXME Rework locale handling, matching conventions used in Ubuntu.

FROM ubuntu:focal-20210609

ARG DEBIAN_FRONTEND="noninteractive"
ENV LANG="en_US.UTF-8" \
    KOOPA_PREFIX="/opt/koopa" \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN apt-get update \
 && apt-get \
        --no-install-recommends \
        --quiet \
        --yes \
        install \
            bash \
            ca-certificates \
            coreutils \
            curl \
            findutils \
            git \
            locales \
            lsb-release \
            procps \
            sudo \
            unzip \
            wget \
 && apt-get clean \
 && rm -frv /var/lib/apt/lists/* \
 && useradd docker \
 && echo 'docker:docker' | chpasswd \
 && mkdir -pv /home/docker \
 && chown 'docker:docker' /home/docker \
 && usermod -s /bin/bash docker \
 && usermod -a -G sudo docker \
 && echo '%sudo ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/sudo \
 && chmod 0440 /etc/sudoers.d/sudo

USER docker
RUN curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- \
        --no-dotfiles \
        --non-interactive \
        --prefix="$KOOPA_PREFIX" \
        --verbose

WORKDIR /home/docker
CMD ["bash", "-il"]
