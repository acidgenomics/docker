# """
# Install Bioconductor old release.
# Updated 2020-11-12.
# """

FROM acidgenomics/bioconductor:base
MAINTAINER docker@acidgenomics.com

RUN koopa install r-cran-binary \
 && koopa install bioconductor --version='3.11' \
 && koopa delete-cache

CMD ["R", "--no-restore", "--no-save", "--quiet"]
