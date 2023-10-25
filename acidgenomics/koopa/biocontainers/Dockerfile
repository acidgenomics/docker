# """
# Biocontainers base image.
# Updated 2023-10-25.
# """

# FIXME Need to bootstrap python3 for this.

FROM docker.io/biocontainers/biocontainers:latest
ENV KOOPA_IS_DOCKER="1"
ENV LANG="en_US.UTF-8"
ENV TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN /usr/bin/curl -LSs 'https://koopa.acidgenomics.com/install' \
    | /bin/bash -s -- \
        --add-to-user-profile \
        --bootstrap \
        --non-interactive \
        --verbose \
 && "${HOME:?}/.local/share/koopa/bin/koopa" system info
