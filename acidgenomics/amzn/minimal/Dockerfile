# """
# Install Amazon Linux.
# Updated 2020-06-29.
# """

FROM amazonlinux:latest
MAINTAINER mike@steinbaugh.com

RUN yum -y install bash bc curl git sudo tar unzip zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
