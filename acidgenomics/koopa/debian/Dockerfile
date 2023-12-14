# """
# Debian base image.
# Updated 2023-10-25.
#
# How to get apt package version:
# > apt-cache policy <package>
#
# Alternatively, can use 'Etc/UTC' for time zone.
#
# @seealso:
# - https://gallery.ecr.aws/debian/debian
# - https://hub.docker.com/_/debian
# - https://hub.docker.com/r/rocker/r-ver/dockerfile
# - https://hub.docker.com/r/rocker/rstudio/dockerfile
# - https://github.com/r-lib/actions/blob/master/run-rchk/Dockerfile
# - https://wiki.debian.org/Locale
# """

FROM public.ecr.aws/debian/debian:stable-20231009-slim
ARG DEBCONF_NONINTERACTIVE_SEEN="true"
ARG DEBIAN_FRONTEND="noninteractive"
ENV KOOPA_IS_DOCKER="1"
ENV LANG="en_US.UTF-8"
ENV LANGUAGE="en_US:en"
ENV TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
USER root
RUN /usr/bin/apt-get update \
 && /usr/bin/apt-get \
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
            'python3' \
            'sudo' \
            'unzip' \
 && /usr/bin/apt-get clean \
 && /bin/rm -fr '/var/lib/apt/lists/'* \
 && echo 'en_US.UTF-8 UTF-8' > '/etc/locale.gen' \
 && /usr/sbin/locale-gen --purge \
 && /usr/sbin/dpkg-reconfigure --frontend='noninteractive' locales \
 && /usr/sbin/update-locale LANG='en_US.UTF-8' \
 && /usr/bin/locale -a \
 && /usr/bin/curl -LSs 'https://koopa.acidgenomics.com/install' \
    | /bin/bash -s -- --non-interactive \
 && /opt/koopa/bin/koopa system info
WORKDIR /root
CMD ["/bin/bash", "-il"]
