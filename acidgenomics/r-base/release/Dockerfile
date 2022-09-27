# """
# Install R base system (for Bioconductor).
# Updated 2022-09-27.
#
# Packages install into '/usr/local/lib/R/site-library' by default.
# """

FROM docker.io/acidgenomics/koopa:ubuntu

ARG DEBCONF_NONINTERACTIVE_SEEN="true" \
    DEBIAN_FRONTEND="noninteractive" \
    TZ="Etc/UTC"

RUN sudo apt-get update \
 && sudo -E apt-get --no-install-recommends --yes \
        install \
            'autoconf' \
            'bash' \
            'bash-completion' \
            'bc' \
            'bison' \
            'build-essential' \
            'bzip2' \
            'ca-certificates' \
            'coreutils' \
            'curl' \
            'debhelper' \
            'default-jdk' \
            'findutils' \
            'gdb' \
            'gettext' \
            'gfortran' \
            'git' \
            'gnupg' \
            'groff-base' \
            'less' \
            'libblas-dev' \
            'libbz2-dev' \
            'libcairo2-dev' \
            'libcurl4-openssl-dev' \
            'libjpeg-dev' \
            'liblapack-dev' \
            'liblzma-dev' \
            'libncurses-dev' \
            'libncurses5-dev' \
            'libpango1.0-dev' \
            'libpcre3-dev' \
            'libpng-dev' \
            'libreadline-dev' \
            'libssl-dev' \
            'libtiff5-dev' \
            'libx11-dev' \
            'libxml2-dev' \
            'libxt-dev' \
            'locales' \
            'lsb-release' \
            'man-db' \
            'mpack' \
            'python3' \
            'python3-venv' \
            'subversion' \
            'sudo' \
            'tcl8.6-dev' \
            'texinfo' \
            'texlive-base' \
            'texlive-extra-utils' \
            'texlive-fonts-extra' \
            'texlive-fonts-recommended' \
            'texlive-latex-base' \
            'texlive-latex-extra' \
            'texlive-latex-recommended' \
            'tk8.6-dev' \
            'tzdata' \
            'unzip' \
            'wget' \
            'x11proto-core-dev' \
            'xauth' \
            'xdg-utils' \
            'xfonts-base' \
            'xvfb' \
            'xz-utils' \
            'zlib1g-dev' \
 && sudo apt-get clean \
 && sudo rm -rf /var/lib/apt/lists/* \
 && koopa install system r \
 && sudo rm -rf /usr/local/lib/R \
 && R -e " \
        install.packages('BiocManager'); \
        BiocManager::install(ask = FALSE); \
        install.packages( \
            pkgs = 'AcidDevTools', \
            repos = c( \
                'https://r.acidgenomics.com', \
                getOption('repos') \
            ) \
        ); \
    "

CMD ["R", "--no-restore", "--no-save", "--quiet"]
