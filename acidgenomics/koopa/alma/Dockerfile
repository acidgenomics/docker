# """
# Alma Linux base image.
# Updated 2023-03-16.
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

FROM public.ecr.aws/docker/library/almalinux:9.1-20230222

ENV KOOPA_IS_DOCKER=1 \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN dnf -y install \
        'findutils' \
        'git' \
        'perl' \
        'procps' \
        'sudo' \
        'unzip' \
 && dnf clean all \
 && useradd 'docker' \
 && echo 'docker:docker' | chpasswd \
 && mkdir -p '/home/docker' \
 && chown 'docker:docker' '/home/docker' \
 && usermod -s '/bin/bash' 'docker' \
 && usermod -a -G 'wheel' 'docker' \
 && echo '%wheel ALL=(ALL) NOPASSWD: ALL' > '/etc/sudoers.d/wheel' \
 && chmod '0440' '/etc/sudoers.d/wheel'

USER docker
RUN curl -LSs 'https://koopa.acidgenomics.com/install' \
    | bash -s -- \
        --non-interactive \
        --verbose \
 && koopa system info

WORKDIR /home/docker
CMD ["bash", "-il"]
