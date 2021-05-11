# """
# Biocontainers base image.
# Updated 2021-05-11.
# """

FROM biocontainers/biocontainers:latest

ENV LANG="en_US.UTF-8" \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --non-interactive --verbose
