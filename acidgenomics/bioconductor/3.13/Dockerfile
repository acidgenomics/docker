# """
# Install Bioconductor devel.
# Updated 2021-02-16.
# """

FROM acidgenomics/r-base:devel
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
        BiocManager::install(version = '3.13', ask = FALSE); \
    "
