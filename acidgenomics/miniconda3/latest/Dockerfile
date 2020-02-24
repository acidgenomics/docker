# """
# Install miniconda3.
# Updated 2020-02-24.
# """

FROM continuumio/miniconda3:latest
MAINTAINER mike@steinbaugh.com

ARG DEBIAN_FRONTEND=noninteractive
ARG FORCE_UNSAFE_CONFIGURE=1

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
