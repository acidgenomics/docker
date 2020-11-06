# """
# Install openSUSE Leap.
# Updated 2020-11-06.
# """

FROM opensuse/leap:latest
MAINTAINER docker@acidgenomics.com

RUN zypper refresh && \
    zypper --non-interactive install \
        bash \
        bc \
        curl \
        git \
        sudo \
        tar \
        zsh \
 && curl -sSL https://koopa.acidgenomics.com/install \
        | bash -s -- --non-interactive --test \
 && /usr/local/koopa/os/linux/sbin/configure-vm --minimal

CMD ["zsh", "-il"]
