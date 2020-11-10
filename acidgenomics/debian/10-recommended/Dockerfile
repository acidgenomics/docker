# """
# Install Debian (recommended).
# Updated 2020-11-10.
# """

FROM acidgenomics/debian:10-minimal
MAINTAINER docker@acidgenomics.com

ARG TERM=xterm-256color

RUN koopa update --fast \
 && /usr/local/koopa/os/linux/sbin/configure-vm --verbose
