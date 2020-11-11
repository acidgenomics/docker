# """
# Install Debian (minimal).
# Updated 2020-11-10.
#
# See also:
# - https://hub.docker.com/r/rocker/r-ver/dockerfile
# - https://hub.docker.com/r/rocker/rstudio/dockerfile
# - https://github.com/r-lib/actions/blob/master/run-rchk/Dockerfile
# """

FROM debian:10
MAINTAINER docker@acidgenomics.com

ARG DEBIAN_FRONTEND=noninteractive
ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    TERM=xterm-256color

USER root
RUN apt-get update \
 && apt-get \
        --no-install-recommends \
        --quiet \
        --yes \
        install \
            bash \
            bc \
            bzip2 \
            ca-certificates \
            coreutils \
            curl \
            findutils \
            git \
            gnupg \
            less \
            locales \
            lsb-release \
            sudo \
            unzip \
            wget \
            zsh \
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
 && /usr/local/koopa/os/linux/sbin/configure-vm --minimal --verbose

CMD ["zsh", "-il"]
