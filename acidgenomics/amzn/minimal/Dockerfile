# """
# Install Amazon Linux.
# Updated 2020-04-23.
# """

FROM amazonlinux:latest
MAINTAINER mike@steinbaugh.com

RUN yum -y install bash bc curl git sudo unzip zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
