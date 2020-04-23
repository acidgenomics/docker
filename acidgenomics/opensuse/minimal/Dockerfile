# """
# Install openSUSE Leap.
# Updated 2020-04-23.
# """

FROM opensuse/leap:latest
MAINTAINER mike@steinbaugh.com

RUN zypper refresh && \
    zypper --non-interactive install bash bc curl git sudo zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
