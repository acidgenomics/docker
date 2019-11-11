#!/usr/bin/env bash
set -Eex -o pipefail

apt-get update && \
    DEBIAN_FRONTEND="noninteractive" \
    apt-get -qy install \
        autoconf \
        automake \
        cargo \
        curl \
        gdb \
        git \
        gtk-doc-tools \
        less \
        libbz2-dev \
        libcairo2-dev \
        libcurl4-openssl-dev \
        libfreetype6-dev \
        libgdal-dev \
        libglu1-mesa-dev \
        libharfbuzz-dev \
        liblzma-dev \
        libmagick++-dev \
        libpng-dev \
        libssh2-1-dev \
        libssl-dev \
        libtool \
        libudunits2-dev \
        libx11-dev \
        libxml2-dev \
        libz-dev \
        nano \
        pandoc \
        pandoc-citeproc \
        pkg-config \
        python3-pip \
        python3-venv \
        texlive \
        vim \
        wget \
        xorg

python3 -m venv ~/.virtualenvs/base
python3 -m venv ~/.virtualenvs/r-reticulate

(
    # shellcheck source=/dev/null
    source ~/.virtualenvs/r-reticulate/bin/activate
    python3 -m pip install --upgrade pip setuptools wheel
    python3 -m pip install louvain umap-learn
    deactivate
)
