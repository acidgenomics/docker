# """
# Void Linux minimal base image.
# Updated 2021-04-09.
#
# See also:
# - https://docs.voidlinux.org/xbps/
# - https://docs.voidlinux.org/config/users-and-groups.html
# """

FROM voidlinux/voidlinux:latest

ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    KOOPA_PREFIX=/opt/koopa \
    TERM=xterm-256color

USER root
RUN xbps-install -Suy \
 && xbps-install -y \
        bash \
        ca-certificates \
        coreutils \
        curl \
        git \
        shadow \
        sudo \
 && useradd docker \
 && mkdir -pv /home/docker \
 && chown 'docker:docker' /home/docker \
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
