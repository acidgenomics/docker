# """
# RHEL base image.
# Updated 2022-10-17.
#
# Conflicts with pre-installed packages:
# - 'bash' : 'bash-minimal'
# - 'curl' : 'curl-minimal'
#
# How to look up package version:
# > dnf info <pkg>
#
# @seealso
# - https://catalog.redhat.com/software/containers/ubi9/
#     ubi/615bcf606feffc5384e8452e
# """

FROM registry.access.redhat.com/ubi9/ubi:9.0.0-1640.1665068441

ENV KOOPA_IS_DOCKER=1 \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
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
