# """
# Install R base system (for Bioconductor).
# Updated 2023-03-28.
# """

FROM public.ecr.aws/acidgenomics/koopa:ubuntu
ARG DEBCONF_NONINTERACTIVE_SEEN="true"
ARG DEBIAN_FRONTEND="noninteractive"
ARG TZ="Etc/UTC"
RUN koopa update koopa \
 && koopa install system r \
 && /usr/bin/apt-get clean \
 && /bin/rm -rf \
        /usr/local/lib/R \
        /var/lib/apt/lists/* \
 && /usr/bin/R -e " \
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
CMD ["/usr/bin/R", "--no-restore", "--no-save", "--quiet"]
