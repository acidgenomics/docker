FROM acidgenomics/r-base:4.2
RUN R -e " \
        install.packages('BiocManager'); \
        BiocManager::install(version = '3.15', ask = FALSE); \
        install.packages( \
            pkgs = 'AcidDevTools', \
            repos = c( \
                'https://r.acidgenomics.com', \
                getOption('repos') \
            ) \
        ); \
    "
