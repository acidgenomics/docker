# """
# Install RHEL (minimal).
# Updated 2021-03-18.
#
# FIXME zsh isn't supported unless built from source.
# """

FROM registry.access.redhat.com/ubi8/ubi
MAINTAINER docker@acidgenomics.com

USER root
RUN dnf -y install \
        bash \
        bc \
        curl \
        git \
        glibc-langpack-en \
        glibc-locale-source \
        sudo \
        # > zsh \
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
 && /opt/koopa/os/linux/common/sbin/configure-vm --minimal

WORKDIR /home/docker
CMD ["bash", "-il"]
