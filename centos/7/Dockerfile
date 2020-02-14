# """
# Install CentOS 7.
# Updated 2020-02-14.
# """

FROM centos:7
MAINTAINER mike@steinbaugh.com

ARG FORCE_UNSAFE_CONFIGURE=1

RUN yum -y install bc curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
