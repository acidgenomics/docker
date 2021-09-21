# """
# Rocky Linux base image.
# Updated 2021-09-21.
#
# Use `dnf info <pkg>` to get version information.
# """

FROM rockylinux/rockylinux:8.4

ENV KOOPA_PREFIX="/opt/koopa" \
    LANG="en_US.UTF-8" \
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
        --prefix="$KOOPA_PREFIX" \
        --verbose

WORKDIR /home/docker
CMD ["bash", "-il"]
