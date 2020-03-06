# """
# Install bcbio-nextgen.
# Updated 2020-03-06.
#
# bcbio-vm images:
# https://quay.io/repository/bcbio/bcbio-vc
# """

FROM debian:latest
MAINTAINER mike@steinbaugh.com

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get \
        --no-install-recommends \
        --quiet \
        --yes \
        install \
            bc \
            bzip2 \
            ca-certificates \
            curl \
            git \
            gnupg \
            lsb-release \
            sudo \
            wget

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
