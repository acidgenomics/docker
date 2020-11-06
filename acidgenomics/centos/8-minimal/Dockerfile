# """
# Install CentOS (minimal).
# Updated 2020-11-06.
# """

FROM centos:8
MAINTAINER docker@acidgenomics.com

RUN dnf -y install \
        bash \
        bc \
        curl \
        git \
        sudo \
        zsh \
 && curl -sSL https://koopa.acidgenomics.com/install \
        | bash -s -- --non-interactive --test \
 && /usr/local/koopa/os/linux/sbin/configure-vm --minimal

CMD ["zsh", "-il"]
