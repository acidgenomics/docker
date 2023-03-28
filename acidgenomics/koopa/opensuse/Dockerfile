# """
# openSUSE Leap base image.
# Updated 2023-03-28.
#
# How to set locale:
# https://doc.opensuse.org/documentation/leap/reference/html/
#     book-opensuse-reference/cha-suse.html
#
# zypper cheatsheet:
# https://en.opensuse.org/images/3/30/Zypper-cheat-sheet-2.pdf
#
# How to look up package versions:
# > sudo zypper info <pkg>
# > sudo zypper search -s <pkg>
#
# @seealso
# - https://hub.docker.com/r/opensuse/leap
# """

FROM docker.io/opensuse/leap:15.4
ENV KOOPA_IS_DOCKER=1 \
    LANG="en_US.UTF-8" \
    TERM="xterm-256color"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
USER root
RUN zypper refresh \
 && zypper install -y \
        'bash' \
        'curl' \
        'git' \
        'perl' \
        'procps' \
        'sudo' \
        'tar' \
        'unzip' \
 && zypper clean \
 && curl -LSs 'https://koopa.acidgenomics.com/install' \
    | bash -s -- \
        --non-interactive \
        --verbose \
 && koopa system info
WORKDIR /root
CMD ["/bin/bash", "-il"]
