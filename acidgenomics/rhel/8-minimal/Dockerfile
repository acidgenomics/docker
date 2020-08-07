# """
# Install RHEL (minimal).
# Updated 2020-08-07.
# """

FROM registry.access.redhat.com/ubi8/ubi
MAINTAINER mike@steinbaugh.com

# Note that zsh isn't supported unless built from source.
RUN dnf -y install bash bc curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
