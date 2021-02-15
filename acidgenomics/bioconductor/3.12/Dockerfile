# """
# Install Bioconductor release.
# Updated 2020-11-12.
# """

FROM acidgenomics/bioconductor:base
MAINTAINER docker@acidgenomics.com

RUN /opt/koopa/os/linux/distro/debian/sbin/install-r-cran-binary \
 && /opt/koopa/bin/install-bioconductor --version='3.12' \
 && koopa delete-cache

CMD ["R", "--no-restore", "--no-save", "--quiet"]
