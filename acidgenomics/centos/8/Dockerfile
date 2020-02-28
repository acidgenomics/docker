# """
# Install CentOS 8.
# Updated 2020-02-28.
# """

FROM centos:8
MAINTAINER mike@steinbaugh.com

RUN dnf -y install bc curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
