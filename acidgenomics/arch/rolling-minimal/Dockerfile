# """
# Arch Linux base image.
# Updated 2021-05-11.
#
# Upgrade with `pacman -Syyu --noconfirm` is currently breaking.
#
# Latest image now has a breaking change due to glibc:
# > error: failed to initialize alpm library
# > (could not find or read directory: /var/lib/pacman/)
#
# Also seeing this error, with older 2021 images:
# Skipped: Current root is not booted.
# ERROR: You must have correct permissions to upgrade the database.
#
# See also:
# - https://stackoverflow.com/questions/66154574
# - https://www.reddit.com/r/archlinux/comments/lek2ba/
#       arch_linux_on_docker_ci_could_not_find_or_read/
# - https://bugs.archlinux.org/task/69563
# - https://serverfault.com/questions/1052963/
#       pacman-doesnt-work-in-docker-image/1053223
# - https://bbs.archlinux.org/viewtopic.php?id=263379
# - https://bugs.archlinux.org/task/69563
#
# How to get the version of a package:
# > pacman -Ss <package>
# """

# Rolling release.
FROM archlinux:latest

ENV KOOPA_PREFIX="/opt/koopa" \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN patched_glibc='glibc-linux4-2.33-4-x86_64.pkg.tar.zst' \
 && curl -LO "https://repo.archlinuxcn.org/x86_64/$patched_glibc" \
 && bsdtar -C '/' -xvf "$patched_glibc" \
 && rm "$patched_glibc" \
 && pacman -Syy --noconfirm \
 && pacman-db-upgrade \
 && pacman -S --noconfirm \
        bash \
        curl \
        git \
        procps \
        shadow \
        sudo \
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
