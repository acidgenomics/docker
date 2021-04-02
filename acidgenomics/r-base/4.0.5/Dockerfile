# """
# Install R 4.0.4.
# Updated 2021-04-02.
# """

FROM acidgenomics/r-base:base

RUN koopa install r --version='4.0.5' \
 && koopa system delete-cache

CMD ["R", "--no-restore", "--no-save", "--quiet"]
