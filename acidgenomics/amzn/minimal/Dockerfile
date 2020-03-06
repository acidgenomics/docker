# """
# Install Amazon Linux.
# Updated 2020-03-06.
# """

FROM amazonlinux:latest
MAINTAINER mike@steinbaugh.com

RUN yum -y install bc curl git sudo unzip

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
