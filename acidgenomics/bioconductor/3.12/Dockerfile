# """
# Install Bioconductor release.
# Updated 2021-02-16.
# """

FROM acidgenomics/r:4.0.4
MAINTAINER docker@acidgenomics.com

RUN koopa update \
 && R -e " \
        install.packages( \
            pkgs = 'AcidDevTools', \
            repos = c( \
                'https://r.acidgenomics.com', \
                getOption('repos') \
            ) \
        ); \
        install.packages('BiocManager'); \
        BiocManager::install(version = '3.12', ask = FALSE); \
    "
