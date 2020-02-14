# """
# Install Ubuntu.
# Updated 2020-02-14.
# """

FROM ubuntu:latest
MAINTAINER mike@steinbaugh.com

ARG DEBIAN_FRONTEND=noninteractive
ARG FORCE_UNSAFE_CONFIGURE=1

RUN apt-get update \
 && apt-get --no-install-recommends --yes install \
        bc \
        ca-certificates \
        curl \
        git \
        sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
