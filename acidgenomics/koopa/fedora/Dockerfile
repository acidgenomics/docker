# """
# Fedora base image.
# Updated 2022-10-17.
#
# How to set locale:
# - https://stackoverflow.com/questions/49197998/
# - https://stackoverflow.com/questions/58304278/
# - https://github.com/fedora-cloud/docker-brew-fedora/issues/14
# - https://github.com/mogproject/dockerfiles/blob/master/centos6/redis/
#       Dockerfile
#
# Get package version with `dnf info <pkg>`.
# """

FROM docker.io/library/fedora:36

ENV KOOPA_IS_DOCKER=1 \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN dnf -y install \
        'bash' \
        'coreutils' \
        'curl' \
        'findutils' \
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
