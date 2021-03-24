# """
# R 4.0.0.
# Updated 2021-03-24.
# """

FROM acidgenomics/r-base:base

RUN koopa update \
 && koopa install r --version='4.0.0' \
 && koopa system delete-cache

CMD ["R", "--no-restore", "--no-save", "--quiet"]
