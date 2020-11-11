# """
# Install Ubuntu 20.04 LTS (recommended).
# Updated 2020-11-11.
# """

FROM acidgenomics/ubuntu:20.04-minimal
MAINTAINER docker@acidgenomics.com

RUN koopa update --fast \
 && /usr/local/koopa/os/linux/sbin/configure-vm --verbose
