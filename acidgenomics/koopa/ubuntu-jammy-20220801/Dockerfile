# """
# Ubuntu 22.04 LTS base image.
# Updated 2022-08-31.
#
# How to get apt package version:
# > apt-cache policy <package>
#
# Alternatively, can use 'Etc/UTC' for time zone.
#
# @seealso
# - https://stackoverflow.com/questions/8671308/
# """

# 22.04
FROM docker.io/library/ubuntu:jammy-20220831

ARG DEBCONF_NONINTERACTIVE_SEEN="true" \
    DEBIAN_FRONTEND="noninteractive"
ENV LANG="en_US.UTF-8" \
    LANGUAGE="en_US:en" \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN apt-get update \
 && apt-get \
        --no-install-recommends \
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
            'perl' \
            'procps' \
            'sudo' \
            'unzip' \
 && apt-get clean \
 && rm -fr '/var/lib/apt/lists/'* \
 && echo 'en_US.UTF-8 UTF-8' > '/etc/locale.gen' \
 && locale-gen --purge \
 && dpkg-reconfigure --frontend='noninteractive' locales \
 && update-locale LANG='en_US.UTF-8' \
 && locale -a \
 && useradd docker \
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
        --non-interactive \
        --verbose \
 && koopa system info

WORKDIR /home/docker
CMD ["bash", "-il"]
