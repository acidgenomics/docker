# Install Ubuntu.
# Updated 2019-12-06.

# Bash config overwrites PS1 for root user.

FROM ubuntu:latest
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
