# """
# Install Nextflow ATAC-seq.
# Updated 2020-05-05.
# """

FROM nfcore/atacseq:latest
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
            zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
