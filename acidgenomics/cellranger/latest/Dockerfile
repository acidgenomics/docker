# """
# Install 10X Genomics Cell Ranger.
# Updated 2020-08-18.
#
# See also:
# - https://hub.docker.com/r/litd/docker-cellranger/~/dockerfile/
# - https://hub.docker.com/r/litd/docker-cellranger/
# """

FROM acidgenomics/fedora:minimal
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /
