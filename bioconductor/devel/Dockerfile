# Install Bioconductor Devel.
# Updated 2019-09-18.

# FROM rocker/rstudio:devel
FROM rocker/rstudio:3.6.1
MAINTAINER mike@steinbaugh.com

# Improve R system configuration.
ADD Renviron.site /usr/local/lib/R/etc/
ADD Rprofile.site /usr/local/lib/R/etc/

WORKDIR /tmp

# Install missing compilation dependencies.
ADD install.sh .
RUN ./install.sh

# Install Bioconductor.
ARG BIOC_VERSION="devel"
ADD install.R .
RUN R -f install.R

WORKDIR /
