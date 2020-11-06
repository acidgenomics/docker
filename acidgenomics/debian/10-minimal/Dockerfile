# """
# Install Debian (minimal).
# Updated 2020-06-26.
# """

FROM debian:10
MAINTAINER docker@acidgenomics.com

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get \
        --no-install-recommends \
        --quiet \
        --yes \
        install \
            bash \
            bc \
            bzip2 \
            ca-certificates \
            coreutils \
            curl \
            findutils \
            git \
            gnupg \
            less \
            lsb-release \
            sudo \
            unzip \
            wget \
            zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
