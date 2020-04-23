# """
# Install CentOS.
# Updated 2020-04-23.
# """

FROM centos:latest
MAINTAINER mike@steinbaugh.com

RUN dnf -y bash install bc curl git sudo zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
