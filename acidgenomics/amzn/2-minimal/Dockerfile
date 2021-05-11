# """
# Amazon Linux base image.
# Updated 2021-05-11.
#
# Use `yum info <pkg>` to get version information.
# """

FROM amazonlinux:2

ENV LANG="en_US.UTF-8" \
    KOOPA_PREFIX="/opt/koopa" \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN yum -y install \
        bash \
        curl \
        findutils \
        git \
        sudo \
        tar \
        unzip \
 && yum clean all \
 && useradd docker \
 && echo 'docker:docker' | chpasswd \
 && mkdir -pv /home/docker \
 && chown 'docker:docker' /home/docker \
 && usermod -s /bin/bash docker \
 && usermod -a -G wheel docker \
 && echo '%wheel ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/wheel \
 && chmod 0440 /etc/sudoers.d/wheel

USER docker
RUN curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- \
        --no-dotfiles \
        --non-interactive \
        --prefix="$KOOPA_PREFIX" \
        --verbose \
 && koopa install aws-cli

WORKDIR /home/docker
CMD ["bash", "-il"]
