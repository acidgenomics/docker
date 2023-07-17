# """
# Arch Linux base image.
# Updated 2023-07-17.
#
# How to get the version of a package:
# > pacman -Ss <package>
#
# @seealso
# - https://gallery.ecr.aws/docker/library/archlinux
# - https://hub.docker.com/_/archlinux
# """

FROM public.ecr.aws/docker/library/archlinux:base-20230709.0.163418
ENV KOOPA_IS_DOCKER="1"
ENV TERM="xterm-256color"
SHELL ["/usr/bin/bash", "-o", "pipefail", "-c"]
USER root
RUN /usr/sbin/pacman -Syy --noconfirm \
 && /usr/sbin/pacman-db-upgrade \
 && /usr/sbin/pacman -S --noconfirm \
        'bash' \
        'curl' \
        'git' \
        'perl' \
        'procps' \
        'shadow' \
        'sudo' \
        'unzip' \
 && /usr/bin/curl -LSs 'https://koopa.acidgenomics.com/install' \
    | /usr/bin/bash -s -- \
        --non-interactive \
        --verbose \
 && /opt/koopa/bin/koopa system info
WORKDIR /root
CMD ["/usr/bin/bash", "-il"]
