# """
# Install RHEL (minimal).
# Updated 2021-03-18.
#
# Note that zsh isn't supported unless built from source.
# """

FROM registry.access.redhat.com/ubi8/ubi
MAINTAINER docker@acidgenomics.com

USER root
RUN dnf -y install \
        bash \
        bc \
        curl \
        git \
        sudo

# FIXME Need to support non-root install.

USER docker
RUN curl -sSL https://koopa.acidgenomics.com/install \
        | bash -s -- --non-interactive --test \
 && /opt/koopa/os/linux/common/sbin/configure-vm --minimal

WORKDIR /home/docker
CMD ["bash", "-il"]
