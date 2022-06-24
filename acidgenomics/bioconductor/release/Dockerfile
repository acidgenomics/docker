FROM docker.io/acidgenomics/r-base:release
RUN R -e " \
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
