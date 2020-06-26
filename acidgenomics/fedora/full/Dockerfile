# """
# Install Fedora (full).
# Updated 2020-06-26.
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
    zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
