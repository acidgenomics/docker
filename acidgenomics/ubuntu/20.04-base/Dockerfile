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
            build-essential=12.8ubuntu1.1 \
            bzip2=1.0.8-2 \
            ca-certificates=20210119~20.04.1 \
            coreutils=8.30-3ubuntu2 \
            curl=7.68.0-1ubuntu2.4 \
            findutils=4.7.0-1ubuntu1 \
            git=1:2.25.1-1ubuntu3.1 \
            gnupg=2.2.19-3ubuntu2.1 \
            less=551-1ubuntu0.1 \
            libncurses-dev=6.2-0ubuntu2 \
            locales=2.31-0ubuntu9.2 \
            lsb-release=11.1.0ubuntu2 \
            sudo=1.8.31-1ubuntu1.2 \
            unzip=6.0-25ubuntu1 \
            tzdata=2021a-0ubuntu0.20.04 \
            wget=1.20.3-1ubuntu1 \
            xz-utils=5.2.4-1ubuntu1 \
            zsh=5.8-3ubuntu1 \
 && apt-get clean \
 && rm -fr /var/lib/apt/lists/* \
 && echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen \
 && locale-gen en_US.utf8 \
 && /usr/sbin/update-locale LANG=en_US.UTF-8 \
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
 && "${KOOPA_PREFIX}/os/linux/common/sbin/configure-system" --base --verbose

WORKDIR /home/docker
CMD ["zsh", "-il"]
