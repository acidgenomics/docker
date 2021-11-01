# """
# Debian minimal base image.
# Updated 2021-11-01.
#
# See also:
# - https://hub.docker.com/r/rocker/r-ver/dockerfile
# - https://hub.docker.com/r/rocker/rstudio/dockerfile
# - https://github.com/r-lib/actions/blob/master/run-rchk/Dockerfile
# - https://wiki.debian.org/Locale
#
# How to get apt package version:
# > apt-cache policy <package>
#
# hadolint:
# - DL3009
# """

## 11.1
FROM debian:bullseye-20211011-slim

ARG DEBIAN_FRONTEND="noninteractive"
ENV KOOPA_PREFIX="/opt/koopa" \
    LANG="en_US.UTF-8" \
    LANGUAGE="en_US:en" \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN apt-get update \
 && apt-get \
        --no-install-recommends \
        --quiet \
        --yes \
        install \
            'bash' \
            'ca-certificates' \
            'coreutils' \
            'curl' \
            'findutils' \
            'git' \
            'locales' \
            'lsb-release' \
            'procps' \
            'sudo' \
            'unzip' \
            'wget' \
 && apt-get clean \
 && rm -fr '/var/lib/apt/lists/'* \
 && echo 'en_US.UTF-8 UTF-8' > '/etc/locale.gen' \
 && locale-gen --purge \
 && dpkg-reconfigure --frontend='noninteractive' locales \
 && update-locale LANG='en_US.UTF-8' \
 && locale -a \
 && useradd 'docker' \
 && echo 'docker:docker' | chpasswd \
 && mkdir -p '/home/docker' \
 && chown 'docker:docker' '/home/docker' \
 && usermod -s '/bin/bash' 'docker' \
 && usermod -a -G 'sudo' 'docker' \
 && echo '%sudo ALL=(ALL) NOPASSWD: ALL' > '/etc/sudoers.d/sudo' \
 && chmod '0440' '/etc/sudoers.d/sudo'

USER docker
RUN curl -sSL 'https://koopa.acidgenomics.com/install' \
    | bash -s -- \
        --no-dotfiles \
        --non-interactive \
        --prefix="${KOOPA_PREFIX:?}" \
        --verbose

WORKDIR /home/docker
CMD ["bash", "-il"]
