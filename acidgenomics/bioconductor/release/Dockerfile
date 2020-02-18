# """
# Install Bioconductor Release.
# Updated 2020-02-18.
# """

# > FROM rocker/rstudio:latest
FROM bioconductor/release_core2
MAINTAINER mike@steinbaugh.com

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get \
        --no-install-recommends \
        --quiet \
        --yes \
        install \
            bc \
            ca-certificates \
            curl \
            git \
            gnupg \
            sudo

# Improve R system configuration.
ADD Renviron.site /usr/local/lib/R/etc/
ADD Rprofile.site /usr/local/lib/R/etc/

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
