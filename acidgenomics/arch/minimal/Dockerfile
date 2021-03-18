# """
# Install Arch Linux.
# Updated 2021-03-18.
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
# FIXME Does the install Zsh script need to fix compinit here?
# """

FROM archlinux:latest
MAINTAINER docker@acidgenomics.com

USER root
RUN patched_glibc='glibc-linux4-2.33-4-x86_64.pkg.tar.zst' \
 && curl -LO "https://repo.archlinuxcn.org/x86_64/$patched_glibc" \
 && bsdtar -C / -xvf "$patched_glibc" \
 && rm "$patched_glibc" \
 # > && pacman -Syyu --noconfirm \
 && pacman -Syy --noconfirm \
 && pacman-db-upgrade \
 && pacman -S --noconfirm \
        base-devel \
        bash \
        curl \
        git \
        shadow \
        sudo \
        zsh \
 && useradd docker \
 && echo 'docker:docker' | chpasswd \
 && mkdir -pv /home/docker \
 && chown 'docker:docker' /home/docker \
 && usermod -a -G wheel docker \
 && echo '%wheel ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/wheel \
 && chmod 0440 /etc/sudoers.d/wheel

USER docker
RUN curl -sSL https://koopa.acidgenomics.com/install \
        | bash -s -- --non-interactive --test \
 && /opt/koopa/os/linux/common/sbin/configure-vm --minimal \
 && /opt/koopa/bin/koopa install zsh

WORKDIR /home/docker
CMD ["/usr/local/bin/zsh", "-il"]
