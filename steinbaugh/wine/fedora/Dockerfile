# """
# Install Wine on Fedora.
# Updated 2020-06-03.
# """

FROM fedora:31
MAINTAINER mike@steinbaugh.com

RUN dnf -y install findutils curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

ENTRYPOINT ["wine"]
