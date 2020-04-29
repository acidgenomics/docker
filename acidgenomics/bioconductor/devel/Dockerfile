# """
# Install Bioconductor.
# Updated 2020-04-29.
# """

FROM rocker/rstudio:devel
MAINTAINER mike@steinbaugh.com

ARG BIOC_VERSION="devel"
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
