# """
# Install Bioconductor devel.
# Updated 2020-11-12.
# """

FROM acidgenomics/bioconductor:base
MAINTAINER docker@acidgenomics.com

RUN koopa install r-devel \
 && koopa install bioconductor --version='3.13' \
 && Rscript -e 'remotes::install_git("https://git.bioconductor.org/packages/DelayedArray")' \
 && Rscript -e 'remotes::install_git("https://git.bioconductor.org/packages/SingleCellExperiment")' \
 && koopa delete-cache

CMD ["R", "--no-restore", "--no-save", "--quiet"]
