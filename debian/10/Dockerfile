# Install Debian 10.
# Updated 2019-12-18.

FROM debian:10
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
