# """
# Install openSUSE Leap.
# Updated 2021-03-18.
# """

FROM opensuse/leap:latest
MAINTAINER docker@acidgenomics.com

USER root
RUN zypper refresh && \
    zypper --non-interactive install \
        bash \
        bc \
        curl \
        git \
        sudo \
        tar \
        zsh

# FIXME NEED TO SUPPORT NON-ROOT INSTALL.
USER docker
RUN curl -sSL https://koopa.acidgenomics.com/install \
        | bash -s -- --non-interactive --test \
 && /opt/koopa/os/linux/common/sbin/configure-vm --minimal

WORKDIR /home/docker
CMD ["zsh", "-il"]
