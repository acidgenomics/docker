# """
# Void Linux minimal base image.
# Updated 2021-09-21.
#
# See also:
# - https://docs.voidlinux.org/xbps/
# - https://docs.voidlinux.org/config/users-and-groups.html
# """

FROM voidlinux/voidlinux:latest

ENV KOOPA_PREFIX="/opt/koopa" \
    LANG="en_US.UTF-8" \
    TERM="xterm-256color"

USER root
RUN xbps-install -Suy \
 && xbps-install -y \
        'bash' \
        'ca-certificates' \
        'coreutils' \
        'curl' \
        'git' \
        'shadow' \
        'sudo' \
        'unzip' \
        'wget' \
 && useradd 'docker' \
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
        --prefix="${KOOPA_PREFIX:?}" \
        --verbose

WORKDIR /home/docker
CMD ["bash", "-il"]
