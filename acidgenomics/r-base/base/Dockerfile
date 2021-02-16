# """
# Install R Debian base system (for Bioconductor).
# Updated 2021-02-16.
# """

FROM acidgenomics/debian:minimal
MAINTAINER docker@acidgenomics.com

RUN koopa update \
 && /opt/koopa/os/linux/common/sbin/configure-vm --bioconductor --verbose
