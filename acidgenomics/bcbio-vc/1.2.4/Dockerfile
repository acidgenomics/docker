# """
# bcbio-nextgen variant calling pipeline.
# Updated 2020-09-22.
# """

FROM quay.io/bcbio/bcbio-vc:1.2.4-9722272
MAINTAINER mike@steinbaugh.com

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get \
        --no-install-recommends \
        --quiet \
        --yes \
        install \
            sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /
