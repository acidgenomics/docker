# """
# CentOS base image.
# Updated 2021-03-25.
#
# Use `dnf info <pkg>` to get version information.
# """

FROM centos:8.3.2011

ARG KOOPA_PREFIX=/opt/koopa
ENV LANG=en_US.UTF-8 \
    TERM=xterm-256color
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN dnf -y install \
        # koopa dependencies:
        bash-4.4.19 \
        curl-7.61.1 \
        git-2.27.0 \
        sudo-1.8.29 \
        # locale dependencies:
        glibc-langpack-en-2.28 \
        glibc-locale-source-2.28 \
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
        --base-image \
        --verbose

WORKDIR /home/docker
CMD ["/usr/local/bin/zsh", "-il"]
