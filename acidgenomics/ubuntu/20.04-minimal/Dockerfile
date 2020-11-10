# """
# Install Ubuntu 20.04 LTS (minimal).
# Updated 2020-11-10.
# """

FROM ubuntu:20.04
MAINTAINER docker@acidgenomics.com

ARG DEBIAN_FRONTEND=noninteractive

USER root
RUN apt-get update \
 && apt-get \
        --no-install-recommends \
        --quiet \
        --yes \
        install \
            bash \
            bc \
            bzip2 \
            ca-certificates \
            coreutils \
            curl \
            findutils \
            git \
            gnupg \
            less \
            lsb-release \
            sudo \
            unzip \
            wget \
            zsh \
 && useradd docker \
 && echo 'docker:docker' | chpasswd \
 && mkdir -pv /home/docker \
 && chown 'docker:docker' /home/docker \
 && usermod -a -G sudo docker \
 && echo '%sudo ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/sudo \
 && chmod 0440 /etc/sudoers.d/sudo

USER docker
RUN curl -sSL https://koopa.acidgenomics.com/install \
        | bash -s -- --non-interactive --test \
 && /usr/local/koopa/os/linux/sbin/configure-vm --minimal

CMD ["zsh", "-il"]
