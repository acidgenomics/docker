# """
# Install CentOS.
# Updated 2020-06-29.
# """

FROM centos:8
MAINTAINER mike@steinbaugh.com

RUN dnf -y install bash bc curl git sudo zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
