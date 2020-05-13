# """
# Install bcbio-nextgen.
# Updated 2020-04-23.
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
