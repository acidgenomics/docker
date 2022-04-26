# FIXME This is failing because 'dirname' doesn't exist.

# """
# Biocontainers base image.
# Updated 2022-04-26.
# """

FROM biocontainers/biocontainers:latest

ENV LANG="en_US.UTF-8" \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -sSL 'https://koopa.acidgenomics.com/install' \
    | bash -s -- \
        --no-dotfiles \
        --non-interactive \
        --profile \
        --verbose
