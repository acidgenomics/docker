# """
# Debian base image.
# Updated 2023-03-28.
#
# How to get apt package version:
# > apt-cache policy <package>
#
# Alternatively, can use 'Etc/UTC' for time zone.
#
# hadolint:
# - DL3009
#
# @seealso:
# - https://hub.docker.com/_/debian
# - https://hub.docker.com/r/rocker/r-ver/dockerfile
# - https://hub.docker.com/r/rocker/rstudio/dockerfile
# - https://github.com/r-lib/actions/blob/master/run-rchk/Dockerfile
# - https://wiki.debian.org/Locale
# """

FROM public.ecr.aws/debian/debian:stable-20230227-slim
ARG DEBCONF_NONINTERACTIVE_SEEN="true"
ARG DEBIAN_FRONTEND="noninteractive"
ENV KOOPA_IS_DOCKER=1 \
    LANG="en_US.UTF-8" \
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
 && curl -LSs 'https://koopa.acidgenomics.com/install' \
    | bash -s -- \
        --non-interactive \
        --verbose \
 && koopa system info
WORKDIR /root
CMD ["/bin/bash", "-il"]
