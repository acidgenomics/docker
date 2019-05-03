# Acid Genomics basejump toolkit image
# R 3.4.4 / Bioconductor 3.6
#
# See also:
# - rocker Dockerfile
#   https://github.com/rocker-org/rocker/blob/master/r-base/Dockerfile
# - Bioconductor Dockerfile
#   https://github.com/Bioconductor/bioc_docker/blob/master/out/release_base/Dockerfile
# - How to resolve apt-utils warning
#   https://github.com/phusion/baseimage-docker/issues/319

FROM rocker/r-ver:3.4.4
MAINTAINER mike@steinbaugh.com

# Nuke cache dirs before installing packages.
RUN rm -f /var/lib/dpkg/available && rm -rf /var/cache/apt/*

# Install missing compilation dependencies.
RUN apt-get update && \
    apt-get -y install --fix-missing gdb \
        libbz2-dev \
        libcurl4-openssl-dev \
        liblzma-dev \
        libmariadb-client-lgpl-dev \
        libpng-dev \
        libssl-dev \
        libxml2-dev \
        libz-dev \
        pkg-config

# Install R packages.
WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R
WORKDIR /
