# """
# Install openSUSE Leap.
# Updated 2020-06-29.
# """

FROM opensuse/leap:latest
MAINTAINER docker@acidgenomics.com

RUN zypper refresh && \
    zypper --non-interactive install bash bc curl git sudo tar zsh

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["zsh", "-il"]
