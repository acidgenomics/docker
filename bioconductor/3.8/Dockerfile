# Bioconductor 3.8
#
# See also:
# - Bioconductor release notes
#   https://bioconductor.org/news/bioc_3_8_release/
# - rocker Dockerfile
#   https://github.com/rocker-org/rocker/blob/master/r-base/Dockerfile
# - rstudio Dockerfile
#   https://hub.docker.com/r/rocker/rstudio/dockerfile
# - Bioconductor Dockerfile
#   https://github.com/Bioconductor/bioc_docker/blob/master/out/release_base/Dockerfile

FROM rocker/r-ver:3.5.3
MAINTAINER mike@steinbaugh.com

# Nuke cache dirs before installing packages.
RUN rm -f /var/lib/dpkg/available && rm -rf /var/cache/apt/*

# libcurl4 conflict
# magick > libcurl4-openssl-dev
# git2r > libgit2-dev > libcurl4-gnutls-dev
# The version of libgit2-dev is too old for git2r anyway.

# Install missing compilation dependencies.
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -qy \
        autoconf \
        automake \
        cargo \
        gtk-doc-tools \
        libbz2-dev \
        libcairo2-dev \
        libcurl4-openssl-dev \
        libfreetype6-dev \
        libgdal-dev \
        libglu1-mesa-dev \
        libharfbuzz-dev \
        liblzma-dev \
        libmagick++-dev \
        libmariadb-client-lgpl-dev \
        libpng-dev \
        libssh2-1-dev \
        libssl-dev \
        libtool \
        libudunits2-dev \
        libxml2-dev \
        libx11-dev \
        libz-dev \
        pkg-config \
        texlive \
        xorg

# Install R packages.
WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R
WORKDIR /
