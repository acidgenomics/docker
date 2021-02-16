# """
# Install Bioconductor old release.
# Updated 2021-02-16.
# """

FROM acidgenomics/bioconductor:base
MAINTAINER docker@acidgenomics.com

RUN koopa update \
 # NOTE [2021-02-16] R 4.0.4 binary files are temporarily unavailable.
 # && koopa install r-cran-binary \
 && koopa install r --version='4.0.4' \
 && koopa install bioconductor --version='3.11' \
 && koopa delete-cache

CMD ["R", "--no-restore", "--no-save", "--quiet"]
