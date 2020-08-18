# """
# Install Fedora (recommended).
# Updated 2020-08-18.
# """

FROM fedora:32
MAINTAINER mike@steinbaugh.com

ARG TERM=xterm-256color

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
