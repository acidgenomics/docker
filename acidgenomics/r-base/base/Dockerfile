# """
# Install R base system (for Bioconductor).
# Updated 2022-06-23.
# """

# NOTE Switch to install using koopa binaries, once they're available.

FROM docker.io/acidgenomics/debian:latest

ARG DEBIAN_FRONTEND="noninteractive"

# NOTE We likely will run into libc issues after removing 'build-essential'.

RUN sudo apt-get update \
 && sudo apt-get --no-install-recommends --quiet --yes \
        install 'build-essential' \
 && koopa install 'pkg-config' \
 && koopa install 'make' \
 && koopa install 'm4' \
 && koopa install 'autoconf' \
 && koopa install 'automake' \
 && koopa install 'bison' \
 && koopa install 'libtool' \
 && koopa install 'gperf' \
 && koopa install 'gmp' \
 && koopa install 'mpfr' \
 && koopa install 'mpc' \
 && koopa install 'gcc' \
 && sudo apt-get --quiet --yes remove 'build-essential' \
 && sudo apt-get --quiet --yes autoremove \
 && koopa install 'attr' \
 && koopa install 'coreutils' \
 && koopa install 'findutils' \
 && koopa install 'sed' \
 && koopa install 'ncurses' \
 && koopa install 'icu4c' \
 && koopa install 'readline' \
 && koopa install 'libxml2' \
 && koopa install 'gettext' \
 && koopa install 'xz' \
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
