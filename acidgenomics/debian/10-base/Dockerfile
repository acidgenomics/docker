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
            bash=5.0-4 \
            bc=1.07.1-2+b1 \
            ca-certificates=20200601~deb10u2 \
            coreutils=8.30-3 \
            curl=7.64.0-4+deb10u1 \
            findutils=4.6.0+git+20190209-2 \
            git=1:2.20.1-2+deb10u3 \
            lsb-release=10.2019051400 \
            sudo=1.8.27-1+deb10u3 \
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
