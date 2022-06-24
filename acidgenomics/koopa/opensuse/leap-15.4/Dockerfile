# """
# openSUSE Leap base image.
# Updated 2022-06-23.
#
# How to set locale:
# https://doc.opensuse.org/documentation/leap/reference/html/
#     book-opensuse-reference/cha-suse.html
#
# Not currently working:
# > localedef -i en_US -f UTF-8 en_US.UTF-8
#
# zypper cheatsheet:
# https://en.opensuse.org/images/3/30/Zypper-cheat-sheet-2.pdf
#
# How to look up package versions:
# > sudo zypper info <pkg>
# > sudo zypper search -s <pkg>
# """

FROM docker.io/opensuse/leap:15.4

ENV LANG="en_US.UTF-8" \
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
 && groupadd 'wheel' \
 && groupadd 'docker' \
 && useradd -G 'docker,wheel' 'docker' >/dev/null 2>&1 \
 && mkdir -p '/home/docker' \
 && chown 'docker:docker' '/home/docker' \
 && usermod -s '/bin/bash' 'docker' \
 && echo '%wheel ALL=(ALL) NOPASSWD: ALL' > '/etc/sudoers.d/wheel' \
 && chmod '0440' '/etc/sudoers.d/wheel'

USER docker
RUN curl -sSL 'https://koopa.acidgenomics.com/install' \
    | bash -s -- \
        --non-interactive \
        --verbose \
 && koopa system info

WORKDIR /home/docker
CMD ["bash", "-il"]
