# """
# Install R 4.0.4.
# Updated 2021-02-16.
# """

FROM acidgenomics/r:base
MAINTAINER docker@acidgenomics.com

RUN koopa update \
 && koopa install r --version='4.0.4' \
 && koopa system delete-cache

CMD ["R", "--no-restore", "--no-save", "--quiet"]
