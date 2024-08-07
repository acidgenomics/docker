# """
# Alpine Linux base image.
# Updated 2024-07-03.
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
# @seealso
# - https://gallery.ecr.aws/docker/library/alpine
# - https://hub.docker.com/_/alpine
# """

FROM public.ecr.aws/docker/library/alpine:3.18.4
ENV KOOPA_IS_DOCKER="1"
ENV TERM="xterm-256color"
SHELL ["/bin/ash", "-eo", "pipefail", "-c"]
USER root
RUN /sbin/apk --no-cache update \
 && /sbin/apk --no-cache add \
        'bash' \
        'ca-certificates' \
        'coreutils' \
        'curl' \
        'git' \
        'perl' \
        'procps' \
        'python3' \
        'shadow' \
        'sudo' \
 && /usr/bin/curl -LSs 'https://koopa.acidgenomics.com/install' \
    | /bin/bash -s -- --develop --non-interactive \
 && /opt/koopa/bin/koopa system info
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
WORKDIR /root
CMD ["/bin/bash", "-il"]
