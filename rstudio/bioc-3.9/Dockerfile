# RStudio instance running Bioconductor 3.9.
# Updated 2019-09-04.

FROM bioconductor/release_core2:R3.6.0_Bioc3.9
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp

# Install missing compilation dependencies.
ADD install.sh .
RUN ./install.sh

# Install Bioconductor.
ARG BIOC_VERSION="3.9"
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R

WORKDIR /
