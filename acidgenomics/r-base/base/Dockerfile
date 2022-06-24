# """
# Install R base system (for Bioconductor).
# Updated 2022-06-23.
#
# Debian 'build-essential' packages: dpkg-dev, g++, gcc, libc-dev, make.
# """

# FIXME Switch to install using koopa binaries, once they're available.
# FIXME Consider removing other apt packages at end of install step.
# FIXME Need to ensure these are removed at end of install:
# - 'bash'
# - 'coreutils'
# - 'curl'
# - 'findutils'
# - 'git'
# - 'perl'
# - 'unzip'
# - 'wget'

FROM docker.io/acidgenomics/koopa:debian

ARG DEBIAN_FRONTEND="noninteractive"

RUN sudo apt-get update \
 && sudo apt-get --no-install-recommends --yes \
        install 'gcc' 'g++' 'libc-dev' 'make' \
 && koopa install 'pkg-config' \
 && koopa install 'make' \
 && koopa install 'xz' \
 && koopa install 'm4' \
 && koopa install 'gmp' \
 && koopa install 'mpfr' \
 && koopa install 'mpc' \
 && koopa install 'gcc' \
 && koopa install 'patch' \
 && koopa install 'autoconf' \
 && koopa install 'automake' \
 && koopa install 'bison' \
 && koopa install 'gperf' \
 && koopa install 'libtool' \
 && koopa install 'bash' \
 && koopa install 'attr' \
 && koopa install 'coreutils' \
 && koopa install 'findutils' \
 && koopa install 'sed' \
 && koopa install 'ncurses' \
 && koopa install 'icu4c' \
 && koopa install 'readline' \
 && koopa install 'libxml2' \
 && koopa install 'gettext' \
 && koopa install 'openssl3' \
 && koopa install 'cmake' \
 && koopa install 'curl' \
 && koopa install 'git' \
 && koopa install 'lapack' \
 && koopa install 'libffi' \
 && koopa install 'libjpeg-turbo' \
 && koopa install 'libpng' \
 && koopa install 'zstd' \
 && koopa install 'libtiff' \
 && koopa install 'openblas' \
 && koopa install 'bzip2' \
 && koopa install 'pcre' \
 && koopa install 'pcre2' \
 && koopa install 'python' \
 && koopa install 'xorg-xorgproto' \
 && koopa install 'xorg-xcb-proto' \
 && koopa install 'xorg-libpthread-stubs' \
 && koopa install 'xorg-xtrans' \
 && koopa install 'xorg-libice' \
 && koopa install 'xorg-libsm' \
 && koopa install 'xorg-libxau' \
 && koopa install 'xorg-libxdmcp' \
 && koopa install 'xorg-libxcb' \
 && koopa install 'xorg-libx11' \
 && koopa install 'xorg-libxext' \
 && koopa install 'xorg-libxrender' \
 && koopa install 'xorg-libxt' \
 && koopa install 'tcl-tk' \
 && koopa install 'perl' \
 && koopa install 'texinfo' \
 && koopa install 'meson' \
 && koopa install 'ninja' \
 && koopa install 'glib' \
 && koopa install 'freetype' \
 && koopa install 'fontconfig' \
 && koopa install 'lzo' \
 && koopa install 'pixman' \
 && koopa install 'cairo' \
 && koopa install 'openjdk' \
 && koopa install 'hdf5'
