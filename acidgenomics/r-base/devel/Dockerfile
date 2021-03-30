# """
# Install latest R development version.
# Updated 2021-03-30.
# """

FROM acidgenomics/r-base:base

RUN koopa install r-devel \
 && koopa system delete-cache

CMD ["R", "--no-restore", "--no-save", "--quiet"]
