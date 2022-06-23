# FIXME The '--add-to-user-profile' command isn't modifying bashrc as expected.

# """
# Biocontainers base image.
# Updated 2022-06-23.
# """

FROM biocontainers/biocontainers:latest

ENV LANG="en_US.UTF-8" \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -sSL 'https://koopa.acidgenomics.com/install' \
    | bash -s -- \
        --add-to-user-profile \
        --non-interactive \
        --verbose
