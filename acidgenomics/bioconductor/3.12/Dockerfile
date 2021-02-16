# """
# Install Bioconductor release.
# Updated 2021-02-16.
#
# NOTE [2021-02-16] R 4.0.4 binary files are temporarily unavailable.
# > koopa install r-cran-binary
# """

FROM acidgenomics/bioconductor:base
MAINTAINER docker@acidgenomics.com

RUN koopa install r --version='4.0.4' \
 && Rscript -e " \
        install.packages( \
            pkgs = 'AcidDevTools', \
            repos = c( \
                'https://r.acidgenomics.com', \
                getOption('repos') \
            ) \
        ); \
        install.packages('BiocManager'); \
        BiocManager::install(version = '3.12', ask = FALSE); \
    " \
 && koopa system delete-cache

CMD ["R", "--no-restore", "--no-save", "--quiet"]
