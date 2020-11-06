# """
# Install Debian (minimal).
# Updated 2020-11-06.
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
            zsh \
 && curl -sSL https://koopa.acidgenomics.com/install \
        | bash -s -- --non-interactive --verbose \
 && /usr/local/koopa/os/linux/sbin/configure-vm --minimal --verbose

CMD ["zsh", "-il"]
