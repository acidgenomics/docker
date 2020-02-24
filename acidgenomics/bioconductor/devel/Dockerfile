# """
# Install Bioconductor Devel.
# Updated 2020-02-24.
# """

# > FROM rocker/rstudio:devel
FROM bioconductor/devel_core2
MAINTAINER mike@steinbaugh.com

ARG DEBIAN_FRONTEND=noninteractive
ARG FORCE_UNSAFE_CONFIGURE=1

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
            lsb-release \
            sudo

# Improve R system configuration.
ADD Renviron.site /usr/local/lib/R/etc/
ADD Rprofile.site /usr/local/lib/R/etc/

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
