# """
# Fedora base image.
# Updated 2021-05-11.
#
# How to set locale:
# - https://stackoverflow.com/questions/49197998/
# - https://github.com/fedora-cloud/docker-brew-fedora/issues/14
# - https://github.com/mogproject/dockerfiles/blob/master/centos6/redis/
#       Dockerfile
# - https://www.xspdf.com/help/50067361.html
# - https://stackoverflow.com/questions/58304278/
#
# Get package version with `dnf info <pkg>`.
#
# NOTE arm64 is currently hanging during dnf step on MacBook.
# """

FROM fedora:34

ENV LANG="en_US.UTF-8" \
    KOOPA_PREFIX="/opt/koopa" \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN dnf -y install \
        bash \
        coreutils \
        findutils \
        curl \
        git \
        procps \
        sudo \
        unzip \
        wget \
 && dnf clean all \
 && useradd docker \
 && echo 'docker:docker' | chpasswd \
 && mkdir -pv /home/docker \
 && chown 'docker:docker' /home/docker \
 && usermod -s /bin/bash docker \
 && usermod -a -G wheel docker \
 && echo '%wheel ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/wheel \
 && chmod 0440 /etc/sudoers.d/wheel

USER docker
RUN curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- \
        --no-dotfiles \
        --non-interactive \
        --prefix="$KOOPA_PREFIX" \
        --verbose

WORKDIR /home/docker
CMD ["bash", "-il"]
