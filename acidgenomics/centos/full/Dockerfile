# """
# Install CentOS.
# Updated 2020-04-24.
# """

FROM centos:latest
MAINTAINER mike@steinbaugh.com

RUN dnf -y install bash bc curl git sudo zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
