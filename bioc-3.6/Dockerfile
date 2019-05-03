# Bioconductor 3.6
#
# See also:
# - Bioconductor release notes
#   https://bioconductor.org/news/bioc_3_6_release/
# - rocker Dockerfile
#   https://github.com/rocker-org/rocker/blob/master/r-base/Dockerfile
# - Bioconductor Dockerfile
#   https://github.com/Bioconductor/bioc_docker/blob/master/out/release_base/Dockerfile

FROM rocker/r-ver:3.4.4
MAINTAINER mike@steinbaugh.com

# Nuke cache dirs before installing packages.
RUN rm -f /var/lib/dpkg/available && rm -rf /var/cache/apt/*

# Install missing compilation dependencies.
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install \
        libbz2-dev \
        libcairo2-dev \
        libcurl4-openssl-dev \
        libfreetype6-dev \
        libgdal-dev \
        libglu1-mesa-dev \
        liblzma-dev \
        libmariadb-client-lgpl-dev \
        libpng-dev \
        libssh2-1-dev \
        libssl-dev \
        libudunits2-dev \
        libxml2-dev \
        libx11-dev \
        libz-dev \
        pkg-config \
        xorg

# Install R packages.
WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R
WORKDIR /
