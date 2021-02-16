# """
# Install Bioconductor devel.
# Updated 2021-02-16.
# """

FROM acidgenomics/bioconductor:base
MAINTAINER docker@acidgenomics.com

RUN koopa update \
    # FIXME THIS step seems to be having a texlive/latex issue.
    # FIXME Need to update java config here with koopa update r-config?
 && koopa install r-devel \
    # FIXME This needs to install koopa without recommended packages.
    # FIXME Or don't install koopa at all?
 && koopa install bioconductor --version='3.13' \
 && Rscript -e 'remotes::install_git("https://git.bioconductor.org/packages/DelayedArray")' \
 && Rscript -e 'remotes::install_git("https://git.bioconductor.org/packages/SingleCellExperiment")' \
 && koopa system delete-cache

CMD ["R", "--no-restore", "--no-save", "--quiet"]
