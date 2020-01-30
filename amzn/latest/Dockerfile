# Install Amazon Linux.
# Updated 2020-01-24.

FROM amazonlinux:latest
MAINTAINER mike@steinbaugh.com

ENV FORCE_UNSAFE_CONFIGURE=1

RUN yum -y install bc curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
