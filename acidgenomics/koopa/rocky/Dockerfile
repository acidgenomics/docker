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
# - https://hub.docker.com/_/rockylinux
# - https://bugs.launchpad.net/tripleo/+bug/1953156
# """

FROM public.ecr.aws/docker/library/rockylinux:9.1.20230215
ENV KOOPA_IS_DOCKER=1 \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
USER root
RUN dnf -y install \
        'bash' \
        'curl-minimal' \
        'findutils' \
        'git' \
        'perl' \
        'procps' \
        'sudo' \
        'unzip' \
 && dnf clean all \
 && curl -LSs 'https://koopa.acidgenomics.com/install' \
    | bash -s -- \
        --non-interactive \
        --verbose \
 && koopa system info
WORKDIR /root
CMD ["/bin/bash", "-il"]
