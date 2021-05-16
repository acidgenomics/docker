# """
# Alpine Linux base image.
# Updated 2021-05-11.
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
# """

FROM alpine:3.13.5

ENV KOOPA_PREFIX="/opt/koopa" \
    TERM="xterm-256color"
SHELL ["/bin/ash", "-eo", "pipefail", "-c"]

USER root
RUN apk --no-cache update \
 && apk --no-cache add \
        bash \
        ca-certificates \
        coreutils \
        curl \
        git \
        procps \
        shadow \
        sudo \
        wget \
 && addgroup -S docker \
 && adduser -D -G docker -s /bin/ash docker \
 && addgroup -S docker wheel \
 && mkdir -pv /home/docker \
 && chown 'docker:docker' /home/docker \
 && usermod -s /bin/bash docker \
 && echo '%wheel ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/wheel \
 && chmod 0440 /etc/sudoers.d/wheel

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER docker
RUN curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- \
        --no-dotfiles \
        --non-interactive \
        --prefix="$KOOPA_PREFIX" \
        --verbose

WORKDIR /home/docker
CMD ["bash", "-il"]
