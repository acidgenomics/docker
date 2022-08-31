# """
# RHEL base image.
# Updated 2022-08-31.
#
# UBI8:
# https://catalog.redhat.com/software/containers/ubi8/5c647760bed8bd28d0e38f9f
#
# UBI9:
# https://catalog.redhat.com/software/containers/ubi9/ubi/615bcf606feffc5384e8452e
#
# How to look up package version:
# > dnf info <pkg>
# """

FROM registry.access.redhat.com/ubi9:9.0.0-1604

ENV TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
# Conflicts with pre-installed packages:
# - 'bash' : 'bash-minimal'
# - 'curl' : 'curl-minimal'
RUN dnf -y install \
        'git' \
        'perl' \
        'procps' \
        'sudo' \
        'unzip' \
 && dnf clean all \
 && useradd 'docker' \
 && echo 'docker:docker' | chpasswd \
 && mkdir -p '/home/docker' \
 && chown 'docker:docker' '/home/docker' \
 && usermod -s '/bin/bash' 'docker' \
 && usermod -a -G 'wheel' 'docker' \
 && echo '%wheel ALL=(ALL) NOPASSWD: ALL' > '/etc/sudoers.d/wheel' \
 && chmod '0440' '/etc/sudoers.d/wheel'

USER docker
RUN curl -sSL 'https://koopa.acidgenomics.com/install' \
    | bash -s -- \
        --non-interactive \
        --verbose \
 && koopa system info

WORKDIR /home/docker
CMD ["bash", "-il"]
