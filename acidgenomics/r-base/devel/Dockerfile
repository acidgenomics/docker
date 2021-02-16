# """
# Install latest R development version.
# Updated 2021-02-16.
# """

FROM acidgenomics/r-base:base
MAINTAINER docker@acidgenomics.com

RUN koopa update \
 && koopa install r-devel \
 && koopa system delete-cache

CMD ["R", "--no-restore", "--no-save", "--quiet"]
