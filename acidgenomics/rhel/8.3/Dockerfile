# """
# RHEL base image.
# Updated 2021-03-24.
#
# UBI8 image info:
# https://catalog.redhat.com/software/containers/ubi8/5c647760bed8bd28d0e38f9f
#
# How to look up package version:
# > dnf info <pkg>
# """

FROM registry.access.redhat.com/ubi8/ubi:8.3

ENV LANG=en_US.UTF-8 \
    KOOPA_PREFIX=/opt/koopa \
    TERM=xterm-256color
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN dnf -y install \
        bash-4.4.19 \
        curl-7.61.1 \
        git-2.27.0 \
        glibc-langpack-en-2.28 \
        glibc-locale-source-2.28 \
        sudo-1.8.29 \
 && dnf clean all \
    # FIXME MOVE THIS TO KOOPA...
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
        --base-system \
        --verbose

WORKDIR /home/docker
CMD ["/usr/local/bin/zsh", "-il"]
