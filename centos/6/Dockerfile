# Install CentOS 6.
# Updated 2019-12-18.

FROM centos:6
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
