# """
# Busybox base image.
# Updated 2023-10-05.
#
# Busybox doesn't ship with bash, curl or git.
#
# @seealso:
# - https://gallery.ecr.aws/docker/library/busybox
# - https://hub.docker.com/_/busybox
# """


FROM public.ecr.aws/docker/library/busybox:1.36.1
ENV KOOPA_IS_DOCKER="1"
USER root
WORKDIR /tmp
RUN install="$(mktemp)" \

RUN mkdir -pv /opt \
 && wget \
    -O 'main.tar.gz' \
    'https://github.com/acidgenomics/koopa/archive/refs/heads/main.tar.gz' \
 && tar -xzf main.tar.gz \
 && mv 'koopa-main' '/opt/koopa' \
 && /opt/koopa/bin/koopa system info
WORKDIR /root
