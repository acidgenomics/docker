FROM acidgenomics/r-base:4.1
RUN R -e " \
        install.packages('BiocManager'); \
        BiocManager::install(version = '3.14', ask = FALSE); \
        install.packages( \
            pkgs = 'AcidDevTools', \
            repos = c( \
                'https://r.acidgenomics.com', \
                getOption('repos') \
            ) \
        ); \
    "
