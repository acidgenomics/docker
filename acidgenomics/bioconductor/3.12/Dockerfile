# """
# Install Bioconductor release.
# Updated 2020-11-12.
# """

FROM acidgenomics/bioconductor:base
MAINTAINER docker@acidgenomics.com

RUN /usr/local/koopa/os/debian/sbin/install-r-cran-binary \
 && /usr/local/koopa/bin/install-bioconductor --version='3.12' \
 && koopa delete-cache

CMD ["R"]
