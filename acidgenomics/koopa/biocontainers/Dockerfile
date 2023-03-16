# """
# Biocontainers base image.
# Updated 2022-09-24.
# """

FROM docker.io/biocontainers/biocontainers:latest

ENV KOOPA_IS_DOCKER=1 \
    LANG="en_US.UTF-8" \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -sSL 'https://koopa.acidgenomics.com/install' \
    | bash -s -- \
        --add-to-user-profile \
        --non-interactive \
        --verbose \
 && "${HOME}/.local/share/koopa/bin/koopa" system info
