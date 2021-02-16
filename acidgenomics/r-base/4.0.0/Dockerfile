# """
# Install R 4.0.0.
# Updated 2021-02-16.
# """

FROM acidgenomics/r-base:base
MAINTAINER docker@acidgenomics.com

RUN koopa update \
 && koopa install r-cran-binary --version='4.0.0' \
 && koopa system delete-cache

CMD ["R", "--no-restore", "--no-save", "--quiet"]
