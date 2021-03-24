# """
# openSUSE Leap base image.
# Updated 2021-03-24.
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

FROM opensuse/leap:15.2

ARG KOOPA_PREFIX=/opt/koopa
ENV LANG=en_US.UTF-8 \
    TERM=xterm-256color
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN zypper refresh && \
    zypper install -y \
        bash=4.4-lp152.11.80 \
        bc=1.07.1-lp152.4.123 \
        curl=7.66.0-lp152.3.12.1 \
        git=2.26.2-lp152.2.6.1 \
        glibc-i18ndata=2.26-lp152.26.6.1 \
        sudo=1.8.22-lp152.8.6.1 \
        tar=1.30-lp152.3.6 \
        zsh=5.6-lp152.2.7 \
 && zypper clean \
 && groupadd wheel \
 && groupadd docker \
 && useradd -G docker,wheel docker >/dev/null 2>&1 \
 && mkdir -pv /home/docker \
 && chown 'docker:docker' /home/docker \
 && echo '%wheel ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/wheel \
 && chmod 0440 /etc/sudoers.d/wheel

USER docker
RUN curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- \
        --non-interactive \
        --prefix="$KOOPA_PREFIX" \
        --verbose \
 && "${KOOPA_PREFIX}/os/linux/common/sbin/configure-vm" --minimal

WORKDIR /home/docker
CMD ["zsh", "-il"]
