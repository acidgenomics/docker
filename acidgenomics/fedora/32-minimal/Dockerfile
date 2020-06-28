# """
# Install Fedora (minimal).
# Updated 2020-06-28.
# """

FROM fedora:32
MAINTAINER mike@steinbaugh.com

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
