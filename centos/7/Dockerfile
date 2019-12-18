# Install CentOS 7.
# Updated 2019-12-18.

FROM centos:7
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
