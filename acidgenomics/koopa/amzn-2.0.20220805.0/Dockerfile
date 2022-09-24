# """
# Amazon Linux base image.
# Updated 2022-09-24.
#
# Use `yum info <pkg>` to get version information.
#
# NOTE yum seems to be broken in current 2.0.20210525.0 build.
# This may be specific to local network at 28-7, need to test.
#
# @seealso
# - https://github.com/amazonlinux/container-images
# """

FROM docker.io/library/amazonlinux:2.0.20220805.0

ENV KOOPA_IS_DOCKER=1 \
    LANG="en_US.UTF-8" \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN yum -y install \
        'bash' \
        'curl' \
        'findutils' \
        'git' \
        'perl' \
        'procps' \
        'sudo' \
        'tar' \
        'unzip' \
 && yum clean all \
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

# FIXME To install AWS CLI, this requires system Python to be installed, to
# enable JSON parsing.
# > && koopa install aws-cli

WORKDIR /home/docker
CMD ["bash", "-il"]
