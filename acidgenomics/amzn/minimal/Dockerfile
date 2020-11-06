# """
# Install Amazon Linux.
# Updated 2020-11-06.
# """

FROM amazonlinux:latest
MAINTAINER docker@acidgenomics.com

RUN yum -y install \
        bash \
        bc \
        curl \
        git \
        sudo \
        tar \
        unzip \
        zsh \
 && curl -sSL https://koopa.acidgenomics.com/install \
        | bash -s -- --non-interactive --test \
 && /usr/local/koopa/os/linux/sbin/configure-vm --minimal \
 && /usr/local/koopa/os/linux/bin/install-aws-cli

CMD ["zsh", "-il"]
