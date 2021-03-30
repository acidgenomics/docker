# """
# R 4.0.0.
# Updated 2021-03-30.
# """

FROM acidgenomics/r-base:base

RUN koopa install r --version='4.0.0' \
 && koopa system delete-cache

CMD ["R", "--no-restore", "--no-save", "--quiet"]
