# """
# Install Fedora (minimal).
# Updated 2020-11-06.
# """

FROM fedora:33
MAINTAINER docker@acidgenomics.com

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
 && curl -sSL https://koopa.acidgenomics.com/install \
        | bash -s -- --non-interactive --test \
 && /usr/local/koopa/os/linux/sbin/configure-vm --minimal

CMD ["zsh", "-il"]
