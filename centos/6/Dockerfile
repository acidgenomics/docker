# Install CentOS 6.
# Updated 2020-01-22.

FROM centos:6
MAINTAINER mike@steinbaugh.com

RUN yum -y install bc curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
