# """
# Install Bioconductor release.
# Updated 2020-11-06.
# """

FROM acidgenomics/debian:minimal
MAINTAINER docker@acidgenomics.com

RUN koopa update \
 && /opt/koopa/os/linux/common/sbin/configure-vm --bioconductor --verbose
