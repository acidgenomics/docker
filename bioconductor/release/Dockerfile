# Install Bioconductor 3.9.
# Updated 2019-08-20.

FROM rocker/r-ver:3.6.1
MAINTAINER mike@steinbaugh.com

# Improve R system configuration.
ADD Renviron.site /usr/local/lib/R/etc/
ADD Rprofile.site /usr/local/lib/R/etc/

WORKDIR /tmp

# Install missing compilation dependencies.
ADD install.sh .
RUN ./install.sh

# Install Bioconductor.
ARG BIOC_VERSION="3.9"
ADD install.R .
RUN R -f install.R

WORKDIR /
