# """
# Install Fedora (minimal).
# Updated 2020-10-27.
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
    zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
