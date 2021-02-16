# """
# Install Bioconductor devel.
# Updated 2021-02-16.
# """

FROM acidgenomics/bioconductor:base
MAINTAINER docker@acidgenomics.com

RUN koopa install r-devel \
 && Rscript -e " \
        install.packages('BiocManager'); \
        BiocManager::install(version = '3.13', ask = FALSE); \
    " \
 && koopa system delete-cache

CMD ["R", "--no-restore", "--no-save", "--quiet"]
