# """
# Alpine Linux base image.
# Updated 2021-03-24.
#
# Alpine uses ash (Almquist shell) by default.
#
# How to set up user and group:
# https://wiki.alpinelinux.org/wiki/Setting_up_a_new_user
#
# This recipe has some useful user configuration examples:
# https://github.com/andyshinn/docker-alpine-abuild/blob/master/Dockerfile
#
# Package repo:
# https://pkgs.alpinelinux.org/packages
#
# hadolint:
# - DL3018
# - DL4006
# """

FROM alpine:3.13.2

ARG KOOPA_PREFIX=/opt/koopa
ENV TERM=xterm-256color
SHELL ["/bin/ash", "-eo", "pipefail", "-c"]

USER root
RUN apk --no-cache update \
 && apk --no-cache add \
        bash=~5.1.0 \
        build-base=~0.5 \
        ca-certificates=~20191127 \
        coreutils=~8.32 \
        curl=~7.74.0 \
        git=~2.30.2 \
        shadow=~4.8.1 \
        sudo=~1.9.5 \
        zsh=~5.8 \
 && addgroup -S docker \
 && adduser -D -G docker -s /bin/ash docker \
 && addgroup -S docker wheel \
 && mkdir -pv /home/docker \
 && chown 'docker:docker' /home/docker \
 && echo '%wheel ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/wheel \
 && chmod 0440 /etc/sudoers.d/wheel

USER docker
RUN curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- \
        --non-interactive \
        --prefix="$KOOPA_PREFIX" \
        --verbose \
 && "${KOOPA_PREFIX}/os/linux/common/sbin/configure-system" --base --verbose

WORKDIR /home/docker
CMD ["zsh", "-il"]
