# """
# Install R base system (for Bioconductor).
# Updated 2023-03-21.
#
# Packages install into '/usr/local/lib/R/site-library' by default.
# """

# FIXME Need to run 'koopa configure system r' here.
# FIXME Consider moving these apt packages into 'koopa install system r'.

FROM public.ecr.aws/acidgenomics/koopa:ubuntu

ARG DEBCONF_NONINTERACTIVE_SEEN="true"
ARG DEBIAN_FRONTEND="noninteractive"
ARG TZ="Etc/UTC"

RUN koopa install system r \
 && sudo apt-get clean \
 && sudo rm -rf \
        /usr/local/lib/R \
        /var/lib/apt/lists/* \
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
