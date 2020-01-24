# Install Bioconductor Release.
# Updated 2020-01-24.

# > FROM rocker/rstudio:latest
FROM bioconductor/release_core2
MAINTAINER mike@steinbaugh.com

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get \
        --no-install-recommends \
        --yes \
        install \
            bc \
            ca-certificates \
            curl \
            git \
            sudo \
 && rm -fr /var/lib/apt/lists/*

# Improve R system configuration.
ADD Renviron.site /usr/local/lib/R/etc/
ADD Rprofile.site /usr/local/lib/R/etc/

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
