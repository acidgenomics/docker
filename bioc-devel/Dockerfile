# Acid Genomics
# Bioconductor 3.9 / R 3.6
#
# Based on:
# - bioc_docker
#   https://github.com/Bioconductor/bioc_docker
#
# Dockerfile links:
# - devel_core2
#   https://hub.docker.com/r/bioconductor/devel_core2/
#   https://github.com/Bioconductor/bioc_docker/tree/master/out/devel_core

FROM bioconductor/devel_core2
MAINTAINER mike@steinbaugh.com

ADD install.R /tmp/
RUN R -f /tmp/install.R
