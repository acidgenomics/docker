# """
# Install Alpine Linux.
# Updated 2020-11-06.
#
# Alpine uses ash (Almquist shell) by default.
# """

FROM alpine:latest
MAINTAINER mike@steinbaugh.com

RUN apk update \
 && apk add \
        bash \
        ca-certificates \
        curl \
        git \
        sudo \
        zsh \
 && curl -sSL https://koopa.acidgenomics.com/install \
        | bash -s -- --non-interactive --test \
 && force=1 source ~/.config/koopa/activate \
 && configure-vm --minimal

CMD ["zsh", "-il"]
