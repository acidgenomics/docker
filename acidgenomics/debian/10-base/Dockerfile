# """
# Debian base image.
# Updated 2021-03-24.
#
# See also:
# - https://hub.docker.com/r/rocker/r-ver/dockerfile
# - https://hub.docker.com/r/rocker/rstudio/dockerfile
# - https://github.com/r-lib/actions/blob/master/run-rchk/Dockerfile
#
# How to get apt package version:
# > apt-cache policy <package>
#
# hadolint:
# - DL3009
# """

FROM debian:10.8

ARG DEBIAN_FRONTEND=noninteractive
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
            bash=5.0-4 \
            bc=1.07.1-2+b1 \
            build-essential=12.6 \
            bzip2=1.0.6-9.2~deb10u1 \
            ca-certificates=20200601~deb10u2 \
            coreutils=8.30-3 \
            curl=7.64.0-4+deb10u1 \
            findutils=4.6.0+git+20190209-2 \
            git=1:2.20.1-2+deb10u3 \
            gnupg=2.2.12-1+deb10u1 \
            less=487-0.1+b1 \
            libncurses-dev=6.1+20181013-2+deb10u2 \
            locales=2.28-10 \
            lsb-release=10.2019051400 \
            sudo=1.8.27-1+deb10u3 \
            tzdata=2021a-0+deb10u1 \
            unzip=6.0-23+deb10u2 \
            wget=1.20.1-1.1 \
            xz-utils=5.2.4-1 \
            zsh=5.7.1-1 \
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
        | bash -s -- --non-interactive --verbose \
 && /opt/koopa/os/linux/common/sbin/configure-vm --minimal --verbose \
 && /opt/koopa/bin/koopa install zsh

WORKDIR /home/docker
CMD ["/usr/local/bin/zsh", "-il"]
