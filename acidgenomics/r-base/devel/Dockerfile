# """
# Install latest R development version.
# Updated 2021-03-24.
# """

FROM acidgenomics/r-base:base

RUN koopa update \
 && koopa install r-devel \
 && koopa system delete-cache

CMD ["R", "--no-restore", "--no-save", "--quiet"]
