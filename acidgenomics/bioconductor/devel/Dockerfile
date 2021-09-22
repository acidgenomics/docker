# """
# Install Bioconductor 'devel' version
# @note Updated 2021-09-22.
#
# @section Using 'bioc-devel' during mid-April to mid-October:
#
# In order to use the 'bioc-devel' version of Bioconductor during the mid-April
# to mid-October release cycle, use the release version of R.
#
# @section Using 'bioc-devel' during mid-October to mid-April:
#
# In order to use the 'bioc-devel' version of Bioconductor during the
# mid-October to mid-April release cycle, you must install the devel version
# of R.
#
# @seealso
# - https://www.bioconductor.org/developers/how-to/useDevel/
# """

FROM acidgenomics/r-base:4.1
RUN R -e " \
        install.packages( \
            pkgs = 'AcidDevTools', \
            repos = c( \
                'https://r.acidgenomics.com', \
                getOption('repos') \
            ) \
        ); \
        install.packages('BiocManager'); \
        BiocManager::install(version = 'devel', ask = FALSE); \
    "
