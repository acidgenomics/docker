# FIXME Need to update locate to 'en_US.UTF-8'.

# """
# Rocky Linux base image.
# Updated 2022-09-20.
#
# Use `dnf info <pkg>` to get version information.
# """

FROM docker.io/library/rockylinux:9.0.20220720-minimal

ENV TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN dnf -y install \
        'bash' \
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
