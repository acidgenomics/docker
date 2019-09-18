#!/usr/bin/env bash
set -Eex -o pipefail

# Nuke cache dirs before installing packages.
rm -f /var/lib/dpkg/available && \
    rm -rf /var/cache/apt/* &&
    rm -rf /var/lib/apt/lists/*

# FIXME missing: libmariadb-client-lgpl-dev

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

python3 -m pip install --upgrade --user virtualenv
python3 -m venv ~/.virtualenvs/default
python3 -m venv ~/.virtualenvs/reticulate

source ~/.virtualenvs/reticulate/bin/activate
pip install --upgrade pip setuptools wheel
pip install louvain umap-learn
deactivate
