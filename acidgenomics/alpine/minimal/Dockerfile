# """
# Install Alpine Linux.
# Updated 2021-03-17.
#
# Alpine uses ash (Almquist shell) by default.
#
# How to set up user and group:
# https://wiki.alpinelinux.org/wiki/Setting_up_a_new_user
#
# This recipe has some useful user configuration examples:
# https://github.com/andyshinn/docker-alpine-abuild/blob/master/Dockerfile
# """

FROM alpine:latest
MAINTAINER docker@acidgenomics.com

USER root
RUN apk --no-cache update \
 && apk --no-cache add \
        bash \
        ca-certificates \
        coreutils \
        curl \
        git \
        shadow \
        sudo \
        zsh \
 && addgroup -S docker \
 && adduser -D -G docker -s /bin/ash docker \
 && addgroup -S docker wheel \
 && mkdir -pv /home/docker \
 && chown 'docker:docker' /home/docker \
 && echo '%wheel ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/wheel \
 && chmod 0440 /etc/sudoers.d/wheel

USER docker
RUN curl -sSL https://koopa.acidgenomics.com/install \
        | bash -s -- --non-interactive --verbose \
 && /opt/koopa/os/linux/common/sbin/configure-vm --minimal --verbose

WORKDIR /home/docker
CMD ["zsh", "-il"]
