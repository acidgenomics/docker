# """
# RHEL base image.
# Updated 2024-07-03.
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

FROM registry.access.redhat.com/ubi9/ubi:9.4-1123
ENV KOOPA_IS_DOCKER="1"
ENV TERM="xterm-256color"
SHELL ["/usr/bin/bash", "-o", "pipefail", "-c"]
USER root
# hadolint ignore=DL4006
RUN /usr/bin/dnf -y install \
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
