# """
# Install Bioconductor.
# Updated 2020-04-29.
# """

FROM rocker/rstudio:3.6.3
MAINTAINER mike@steinbaugh.com

ARG BIOC_VERSION="3.10"
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get \
        --no-install-recommends \
        --quiet \
        --yes \
        install \
            bash \
            bc \
            ca-certificates \
            curl \
            git \
            gnupg \
            lsb-release \
            sudo \
            zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
