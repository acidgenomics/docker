# """
# Amazon Linux base image.
# Updated 2023-10-25.
#
# @seealso
# - https://gallery.ecr.aws/amazonlinux/amazonlinux
# - https://docs.aws.amazon.com/AmazonECR/latest/userguide/
#     amazon_linux_container_image.html
# - https://github.com/amazonlinux/container-images
# - https://hub.docker.com/_/amazonlinux
# """

FROM public.ecr.aws/amazonlinux/amazonlinux:2023
ENV KOOPA_IS_DOCKER="1"
ENV LANG="C.UTF-8"
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
        'tar' \
        'unzip' \
 && /usr/bin/dnf clean all \
 && /usr/bin/curl -LSs 'https://koopa.acidgenomics.com/install' \
    | /usr/bin/bash -s -- \
        --non-interactive \
        --verbose \
 && /opt/koopa/bin/koopa system info
WORKDIR /root
CMD ["/usr/bin/bash", "-il"]
