# """
# Install Nextflow MNase-seq.
# Updated 2020-05-06.
# """

FROM nfcore/mnaseseq:latest
MAINTAINER mike@steinbaugh.com

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
            unzip \
            zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
