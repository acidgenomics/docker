# """
# Install Amazon Linux.
# Updated 2020-11-11.
# """

FROM amazonlinux:latest
MAINTAINER docker@acidgenomics.com

ENV LANG=en_US.UTF-8 \
    TERM=xterm-256color

USER root
RUN yum -y install \
        bash \
        bc \
        curl \
        git \
        glibc-langpack-en \
        glibc-locale-source \
        sudo \
        tar \
        unzip \
        zsh \
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
        | bash -s -- --non-interactive --test \
 && /opt/koopa/os/linux/common/sbin/configure-vm --minimal \
 && /opt/koopa/os/linux/common/bin/install-aws-cli

CMD ["zsh", "-il"]
