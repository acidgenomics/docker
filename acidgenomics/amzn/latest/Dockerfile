# """
# Install Amazon Linux.
# Updated 2020-02-28.
# """

FROM amazonlinux:latest
MAINTAINER mike@steinbaugh.com

RUN yum -y install bc curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
