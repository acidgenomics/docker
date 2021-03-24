# """
# Amazon Linux base image.
# Updated 2021-03-24.
#
# Use `yum info <pkg>` to get version information.
# """

FROM amazonlinux:2.0.20210219.0

ARG KOOPA_PREFIX=/opt/koopa
ENV LANG=en_US.UTF-8 \
    TERM=xterm-256color
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN yum -y install \
        bash-4.2 \
        bc-1.06.95 \
        curl-7.61.1 \
        findutils-4.5.11 \
        gcc-7.3.1 \
        git-2.23.3 \
        glibc-langpack-en-2.26 \
        glibc-locale-source-2.26 \
        less-458 \
        make-3.82 \
        ncurses-devel-6.0 \
        sudo-1.8.23 \
        tar-1.26 \
        unzip-6.0 \
        xz-5.2.2 \
        zsh-5.7.1 \
 && yum clean all \
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
 && "${KOOPA_PREFIX}/os/linux/common/sbin/configure-vm" --minimal \
 && "${KOOPA_PREFIX}/bin/koopa" install zsh \
 && "${KOOPA_PREFIX}/bin/koopa" install aws-cli

WORKDIR /home/docker
CMD ["/usr/local/bin/zsh", "-il"]
