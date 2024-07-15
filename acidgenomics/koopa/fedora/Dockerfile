# """
# Fedora base image.
# @note Updated 2024-07-05.
#
# How to set locale:
# - https://gallery.ecr.aws/docker/library/fedora
# - https://stackoverflow.com/questions/49197998/
# - https://stackoverflow.com/questions/58304278/
# - https://github.com/fedora-cloud/docker-brew-fedora/issues/14
# - https://github.com/mogproject/dockerfiles/blob/master/centos6/redis/
#       Dockerfile
#
# Get package version with `dnf info <pkg>`.
#
# @seealso
# - https://gallery.ecr.aws/docker/library/fedora
# - https://hub.docker.com/_/fedora
# """

FROM public.ecr.aws/docker/library/fedora:39
ENV KOOPA_IS_DOCKER="1"
ENV TERM="xterm-256color"
SHELL ["/usr/bin/bash", "-o", "pipefail", "-c"]
USER root
# hadolint ignore=DL4006
RUN /usr/bin/dnf -y install \
        'bash' \
        'coreutils' \
        'curl' \
        'findutils' \
        'git' \
        'perl' \
        'procps' \
        'python' \
        'sudo' \
        'unzip' \
 && /usr/bin/dnf clean all \
 && /usr/bin/curl -LSs 'https://koopa.acidgenomics.com/install' \
    | /usr/bin/bash -s -- --develop --non-interactive \
 && /opt/koopa/bin/koopa system info
WORKDIR /root
CMD ["/usr/bin/bash", "-il"]
