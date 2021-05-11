# NOTE This environment currently fails to detect
# 'koopa::linux_configure_system' as a function consistently, so disabling as
# a default build for the moment.
FROM acidgenomics/alpine:3.13.5-minimal
RUN "${KOOPA_PREFIX}/bin/koopa" configure system \
        --base-image \
        --verbose
