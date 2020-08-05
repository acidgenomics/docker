# """
# Install CentOS (full).
# Updated 2020-08-05.
# """

FROM centos:8
MAINTAINER mike@steinbaugh.com

RUN dnf -y install bash bc curl git sudo zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
