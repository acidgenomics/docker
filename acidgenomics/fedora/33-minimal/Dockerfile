# """
# Install Fedora (minimal).
# Updated 2020-11-10.
# """

FROM fedora:33
MAINTAINER docker@acidgenomics.com

USER root
RUN dnf -y install \
        bash \
        bc \
        coreutils \
        curl \
        findutils \
        git \
        less \
        sudo \
        unzip \
        zsh \
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
