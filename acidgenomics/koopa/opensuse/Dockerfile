# """
# openSUSE Leap base image.
# Updated 2023-05-02.
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

FROM docker.io/opensuse/leap:15.5
ENV KOOPA_IS_DOCKER="1"
ENV LANG="en_US.UTF-8"
ENV TERM="xterm-256color"
SHELL ["/usr/bin/bash", "-o", "pipefail", "-c"]
USER root
# hadolint ignore=DL4006
RUN /usr/bin/zypper refresh \
 && /usr/bin/zypper install -y \
        'bash' \
        'curl' \
        'git' \
        'perl' \
        'procps' \
        'sudo' \
        'tar' \
        'unzip' \
 && /usr/bin/zypper clean \
 && /usr/bin/curl -LSs 'https://koopa.acidgenomics.com/install' \
    | /usr/bin/bash -s -- \
        --non-interactive \
        --verbose \
 && /opt/koopa/bin/koopa system info
WORKDIR /root
CMD ["/usr/bin/bash", "-il"]
