# """
# Install CentOS (minimal).
# Updated 2020-08-05.
# """

FROM centos:8
MAINTAINER docker@acidgenomics.com

RUN dnf -y install bash bc curl git sudo zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
