# Install CentOS 8.
# Updated 2020-01-24.

FROM centos:8
MAINTAINER mike@steinbaugh.com

ENV FORCE_UNSAFE_CONFIG=1

RUN dnf -y install bc curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
