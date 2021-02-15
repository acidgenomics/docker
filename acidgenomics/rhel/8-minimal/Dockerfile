# """
# Install RHEL (minimal).
# Updated 2020-11-06.
#
# Note that zsh isn't supported unless built from source.
# """

FROM registry.access.redhat.com/ubi8/ubi
MAINTAINER docker@acidgenomics.com

RUN dnf -y install \
        bash \
        bc \
        curl \
        git \
        sudo \
 && curl -sSL https://koopa.acidgenomics.com/install \
        | bash -s -- --non-interactive --test \
 && /opt/koopa/os/linux/common/sbin/configure-vm --minimal

CMD ["bash", "-il"]
