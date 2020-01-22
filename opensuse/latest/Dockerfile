# Install openSUSE Leap.
# Updated 2020-01-22.

FROM opensuse/leap:latest
MAINTAINER mike@steinbaugh.com

RUN zypper refresh && \
    zypper --non-interactive install bc curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
