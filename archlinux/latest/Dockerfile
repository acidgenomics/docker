# Install Arch Linux.
# Updated 2019-12-06.

# Optional dependencies for r
#     tk: tcl/tk interface
#     texlive-bin: latex sty files
#     gcc-fortran: needed to compile some CRAN packages
#     openblas: faster linear algebra

# Note that Arch is currently overwriting PS1 for root.

FROM archlinux:latest
MAINTAINER mike@steinbaugh.com

RUN pacman -Syyu --noconfirm && \
    pacman-db-upgrade && \
    pacman -S --noconfirm \
        awk \
        bash \
        fish \
        git \
        grep \
        man \
        parallel \
        r \
        sudo \
        tree \
        wget \
        which \
        zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
