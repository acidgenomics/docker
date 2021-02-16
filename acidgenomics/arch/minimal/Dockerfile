# """
# Install Arch Linux.
# Updated 2021-02-16.
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
# - https://www.reddit.com/r/archlinux/comments/lek2ba/
#       arch_linux_on_docker_ci_could_not_find_or_read/
# - https://bugs.archlinux.org/task/69563
# - https://serverfault.com/questions/1052963/
#       pacman-doesnt-work-in-docker-image/1053223
# """

FROM archlinux:latest
MAINTAINER docker@acidgenomics.com

RUN pacman -Syyu --noconfirm \
 && pacman-db-upgrade \
 && pacman -S --noconfirm \
        bash \
        curl \
        git \
        sudo \
        zsh \
 && curl -sSL https://koopa.acidgenomics.com/install \
        | bash -s -- --non-interactive --test \
 && /opt/koopa/os/linux/common/sbin/configure-vm --minimal

CMD ["zsh", "-il"]
