# """
# Amazon Linux base image.
# Updated 2023-03-28.
#
# @seealso
# - https://gallery.ecr.aws/amazonlinux/amazonlinux
# - https://docs.aws.amazon.com/AmazonECR/latest/userguide/
#     amazon_linux_container_image.html
# - https://github.com/amazonlinux/container-images
# - https://hub.docker.com/_/amazonlinux
# """

FROM public.ecr.aws/amazonlinux/amazonlinux:2023.0.20230315.0
ENV KOOPA_IS_DOCKER=1 \
    LANG="C.UTF-8" \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
USER root
RUN yum -y install \
        'findutils' \
        'git' \
        'perl' \
        'procps' \
        'sudo' \
        'tar' \
        'unzip' \
 && yum clean all \
 && curl -LSs 'https://koopa.acidgenomics.com/install' \
    | bash -s -- \
        --non-interactive \
        --verbose \
 && koopa system info
WORKDIR /root
CMD ["/bin/bash", "-il"]
