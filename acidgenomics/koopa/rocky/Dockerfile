# """
# Rocky Linux base image.
# Updated 2023-03-28.
#
# The minimal variant doesn't contain 'dnf'.
#
# Regarding '--nobest' flag usage during 'dnf install' step:
# https://access.redhat.com/discussions/6138732
#
# @seealso
# - https://gallery.ecr.aws/docker/library/rockylinux
# - https://hub.docker.com/_/rockylinux
# - https://bugs.launchpad.net/tripleo/+bug/1953156
# """

FROM public.ecr.aws/docker/library/rockylinux:9.1.20230215
ENV KOOPA_IS_DOCKER="1"
ENV TERM="xterm-256color"
SHELL ["/usr/bin/bash", "-o", "pipefail", "-c"]
USER root
RUN /usr/bin/dnf -y install \
        'bash' \
        'curl-minimal' \
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
