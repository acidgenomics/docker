# """
# Fedora base image.
# Updated 2021-03-24.
#
# How to set locale:
# - https://stackoverflow.com/questions/49197998/
# - https://github.com/fedora-cloud/docker-brew-fedora/issues/14
# - https://github.com/mogproject/dockerfiles/blob/master/centos6/redis/
#       Dockerfile
# - https://www.xspdf.com/help/50067361.html
# - https://stackoverflow.com/questions/58304278/
#
# Get package version with `dnf info <pkg>`.
# """

FROM fedora:33

ARG KOOPA_PREFIX=/opt/koopa
ENV LANG=en_US.UTF-8 \
    TERM=xterm-256color
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN dnf -y install \
        bash-5.0.17 \
        bc-1.07.1 \
        coreutils-8.32 \
        curl-7.71.1 \
        findutils-4.7.0 \
        git-2.30.2 \
        glibc-langpack-en-2.32 \
        glibc-locale-source-2.32 \
        less-551 \
        sudo-1.9.5p2 \
        unzip-6.0 \
        zsh-5.8 \
 && dnf clean all \
 && localedef -i en_US -f UTF-8 en_US.UTF-8 \
 && useradd docker \
 && echo 'docker:docker' | chpasswd \
 && mkdir -pv /home/docker \
 && chown 'docker:docker' /home/docker \
 && usermod -a -G wheel docker \
 && echo '%wheel ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/wheel \
 && chmod 0440 /etc/sudoers.d/wheel

USER docker
RUN curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- \
        --non-interactive \
        --prefix="$KOOPA_PREFIX" \
        --verbose \
 && "${KOOPA_PREFIX}/os/linux/common/sbin/configure-system" \
        --base \
        --verbose

WORKDIR /home/docker
CMD ["/usr/local/bin/zsh", "-il"]
