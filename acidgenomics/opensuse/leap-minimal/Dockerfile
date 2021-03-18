# """
# Install openSUSE Leap.
# Updated 2021-03-18.
#
# How to set locale:
# https://doc.opensuse.org/documentation/leap/reference/html/
#     book-opensuse-reference/cha-suse.html
#
# Not currently working:
# > localedef -i en_US -f UTF-8 en_US.UTF-8
# """

FROM opensuse/leap:latest
MAINTAINER docker@acidgenomics.com

USER root
RUN zypper refresh && \
    zypper --non-interactive install \
        bash \
        bc \
        curl \
        git \
        glibc-i18ndata \
        sudo \
        tar \
        zsh \
 && groupadd wheel \
 && groupadd docker \
 && useradd -G docker,wheel docker >/dev/null 2>&1 \
 && mkdir -pv /home/docker \
 && chown 'docker:docker' /home/docker \
 && echo '%wheel ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/wheel \
 && chmod 0440 /etc/sudoers.d/wheel

USER docker
RUN curl -sSL https://koopa.acidgenomics.com/install \
        | bash -s -- --non-interactive --test \
 && /opt/koopa/os/linux/common/sbin/configure-vm --minimal

WORKDIR /home/docker
CMD ["zsh", "-il"]
