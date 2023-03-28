# """
# Fedora base image.
# @note Updated 2023-03-28.
#
# How to set locale:
# - https://stackoverflow.com/questions/49197998/
# - https://stackoverflow.com/questions/58304278/
# - https://github.com/fedora-cloud/docker-brew-fedora/issues/14
# - https://github.com/mogproject/dockerfiles/blob/master/centos6/redis/
#       Dockerfile
#
# Get package version with `dnf info <pkg>`.
#
# @seealso
# - https://hub.docker.com/_/fedora
# """

FROM public.ecr.aws/docker/library/fedora:37
ENV KOOPA_IS_DOCKER="1"
ENV TERM="xterm-256color"
SHELL ["/usr/bin/bash", "-o", "pipefail", "-c"]
USER root
RUN /usr/bin/dnf -y install \
        'bash' \
        'coreutils' \
        'curl' \
        'findutils' \
        'git' \
        'perl' \
        'procps' \
        'sudo' \
        'unzip' \
 && /usr/bin/dnf clean all \
 && /usr/bin/curl -LSs 'https://koopa.acidgenomics.com/install' \
    | /usr/bin/bash -s -- \
        --non-interactive \
        --verbose \
 && /opt/koopa/bin/koopa system info
WORKDIR /root
CMD ["/usr/bin/bash", "-il"]
