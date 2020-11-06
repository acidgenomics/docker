# """
# Install Bioconductor old release.
# Updated 2020-11-06.
# """

FROM acidgenomics/bioconductor:base
MAINTAINER docker@acidgenomics.com

RUN /usr/local/koopa/os/debian/sbin/install-r-cran-binary \
 && /usr/local/koopa/bin/update-r-config \
 && /usr/local/koopa/bin/install-bioconductor --version='3.11' \
 && koopa install r \
 && koopa delete-cache
