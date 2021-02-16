# """
# Install R 4.0.4.
# Updated 2021-02-16.
#
# NOTE RcppEigen is currently having compilation issues.
# """

FROM acidgenomics/r:base
MAINTAINER docker@acidgenomics.com

RUN koopa update \
 && koopa install r-cran-binary --version='4.0.4' \
 && koopa system delete-cache

CMD ["R", "--no-restore", "--no-save", "--quiet"]
