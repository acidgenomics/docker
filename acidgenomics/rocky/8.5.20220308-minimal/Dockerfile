# """
# Rocky Linux base image.
# Updated 2022-04-26.
#
# Use `dnf info <pkg>` to get version information.
# """

FROM rockylinux:8.5.20220308

ENV LANG="en_US.UTF-8" \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN dnf -y install \
        'bash' \
        'curl' \
        'git' \
        'procps' \
        'sudo' \
        'unzip' \
        'wget' \
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
        --no-dotfiles \
        --non-interactive \
        --verbose

WORKDIR /home/docker
CMD ["bash", "-il"]
