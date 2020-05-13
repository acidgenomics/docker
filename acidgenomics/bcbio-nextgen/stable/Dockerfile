# """
# Install bcbio-nextgen stable version.
# Updated 2020-05-13.
#
# bcbio-vm images:
# https://quay.io/repository/bcbio/bcbio-vc
# """

FROM acidgenomics/debian:minimal
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /
