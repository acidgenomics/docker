# """
# RHEL base image.
# Updated 2023-03-28.
#
# Conflicts with pre-installed packages:
# - 'bash' : 'bash-minimal'
# - 'curl' : 'curl-minimal'
#
# How to look up package version:
# > dnf info <pkg>
#
# @seealso
# - https://catalog.redhat.com/software/containers/search
#   Search for "ubi9"
# """

FROM registry.access.redhat.com/ubi9/ubi:9.1.0-1750.1675784955
ENV KOOPA_IS_DOCKER=1 \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
USER root
RUN dnf -y install \
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
