# Install openSUSE Leap.
# Updated 2019-11-27.

FROM opensuse/leap:latest
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
