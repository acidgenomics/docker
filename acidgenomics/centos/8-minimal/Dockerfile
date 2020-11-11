# """
# Install CentOS (minimal).
# Updated 2020-11-11.
# """

FROM centos:8
MAINTAINER docker@acidgenomics.com

ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    TERM=xterm-256color

USER root
RUN dnf -y install \
        bash \
        bc \
        curl \
        git \
        glibc-langpack-en \
        glibc-locale-source \
        less \
        sudo \
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
 && /usr/local/koopa/os/linux/sbin/configure-vm --minimal --verbose

CMD ["zsh", "-il"]
