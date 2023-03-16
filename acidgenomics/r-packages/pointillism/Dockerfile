FROM docker.io/acidgenomics/r-base:latest

ARG DEBCONF_NONINTERACTIVE_SEEN="true"
ARG DEBIAN_FRONTEND="noninteractive"

RUN sudo apt-get update \
 && sudo -E apt-get install --no-install-recommends --yes \
        'libgdal-dev' \
        'libgeos-dev' \
        'libproj-dev' \
 && R -e 'AcidDevTools::install("pointillism", dependencies = TRUE)'
