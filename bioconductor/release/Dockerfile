# Install Bioconductor Release.
# Updated 2019-11-11.

# > FROM rocker/rstudio:3.6.1
FROM bioconductor/release_core2
MAINTAINER mike@steinbaugh.com

# Improve R system configuration.
ADD Renviron.site /usr/local/lib/R/etc/
ADD Rprofile.site /usr/local/lib/R/etc/

WORKDIR /tmp

# Install missing compilation dependencies.
ADD install.sh .
RUN ./install.sh

# Install Bioconductor.
# > ARG BIOC_VERSION="3.10"
ADD install.R .
RUN R -f install.R

WORKDIR /
