# """
# Install miniconda3.
# Updated 2020-02-28.
# """

FROM continuumio/miniconda3:latest
MAINTAINER mike@steinbaugh.com

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get \
        --no-install-recommends \
        --quiet \
        --yes \
        install \
            bc \
            ca-certificates \
            curl \
            git \
            gnupg \
            lsb-release \
            sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
