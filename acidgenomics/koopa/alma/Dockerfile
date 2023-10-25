# """
# Alma Linux base image.
# Updated 2023-10-25.
#
# Conflicts with pre-installed packages:
# - 'bash' : 'bash-minimal'
# - 'curl' : 'curl-minimal'
#
# @seealso
# - https://gallery.ecr.aws/docker/library/almalinux
# - https://hub.docker.com/_/almalinux
# - https://gallery.ecr.aws/almalinux/almalinux
# """

FROM public.ecr.aws/docker/library/almalinux:9.2-20230718
ENV KOOPA_IS_DOCKER="1"
ENV TERM="xterm-256color"
SHELL ["/usr/bin/bash", "-o", "pipefail", "-c"]
USER root
# hadolint ignore=DL4006
RUN /usr/bin/dnf -y install \
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
