# """
# Ubuntu 22.04 LTS base image.
# Updated 2023-06-29.
#
# How to get apt package version:
# > apt-cache policy <package>
#
# Alternatively, can use 'Etc/UTC' for time zone.
#
# Can disable Ubuntu Pro spam with:
# > pro config set apt_news=false
#
# @seealso
# - https://gallery.ecr.aws/lts/ubuntu
# - https://gallery.ecr.aws/ubuntu/ubuntu
# - https://hub.docker.com/_/ubuntu
# - https://stackoverflow.com/questions/8671308/
# """

FROM public.ecr.aws/lts/ubuntu:22.04_stable
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
            'python3' \
            'procps' \
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
    | /bin/bash -s -- \
        --non-interactive \
        --verbose \
 && /opt/koopa/bin/koopa system info
WORKDIR /root
CMD ["/bin/bash", "-il"]
