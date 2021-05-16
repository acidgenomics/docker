# """
# RHEL base image.
# Updated 2021-05-11.
#
# UBI8 image info:
# https://catalog.redhat.com/software/containers/ubi8/5c647760bed8bd28d0e38f9f
#
# How to look up package version:
# > dnf info <pkg>
# """

FROM registry.access.redhat.com/ubi8/ubi:8.3

ENV LANG=en_US.UTF-8 \
    KOOPA_PREFIX=/opt/koopa \
    TERM=xterm-256color
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN dnf -y install \
        bash \
        curl \
        git \
        procps \
        sudo \
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
