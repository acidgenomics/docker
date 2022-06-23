# """
# Install R base system (for Bioconductor).
# Updated 2022-04-26.
#
# Switched to Ubuntu from Debian so we can take advantage of new binary
# package install support via RStudio Package Manager.
#
# Refer to "https://packagemanager.rstudio.com" for details on RSPM config.
# """

FROM docker.io/acidgenomics/ubuntu:minimal
# FIXME Rethink this, installing packages manually instead.
RUN koopa configure system \
        --bioconductor \
        --verbose
