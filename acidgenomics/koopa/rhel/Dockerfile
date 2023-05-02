# """
# RHEL base image.
# Updated 2023-05-02.
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

FROM registry.access.redhat.com/ubi9/ubi:9.1.0-1817
ENV KOOPA_IS_DOCKER="1"
ENV TERM="xterm-256color"
SHELL ["/usr/bin/bash", "-o", "pipefail", "-c"]
USER root
RUN /usr/bin/dnf -y install \
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
