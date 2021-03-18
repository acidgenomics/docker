# """
# Install R base system (for Bioconductor).
# Updated 2021-03-18.
#
# Switched to Ubuntu from Debian so we can take advantage of new binary
# package install support via RStudio Package Manager.
#
# Refer to "https://packagemanager.rstudio.com" for details on RSPM config.
# """

FROM acidgenomics/ubuntu:minimal
MAINTAINER docker@acidgenomics.com

RUN koopa update \
 && /opt/koopa/os/linux/common/sbin/configure-vm --bioconductor --verbose
