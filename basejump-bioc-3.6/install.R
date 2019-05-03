library(BiocInstaller)

# This dependency will error in `install_github()` call, unless we install it
# here first.
biocLite("DelayedArray")

# Here's the error message:
# * installing *source* package ‘DelayedArray’ ...
# ** R
# ** inst
# ** preparing package for lazy loading
# in method for ‘coerce’ with signature ‘"DelayedMatrix","dgCMatrix"’: no definition for class “dgCMatrix”
# in method for ‘coerce’ with signature ‘"DelayedMatrix","sparseMatrix"’: no definition for class “sparseMatrix”
# Error in setMethod("arbind", "DelayedArray", .DelayedArray_arbind) :
#   no existing definition for function ‘arbind’
# Error : unable to load R code in package ‘DelayedArray’
# ERROR: lazy loading failed for package ‘DelayedArray’
# * removing ‘/usr/local/lib/R/site-library/DelayedArray’
# ERROR: dependency ‘DelayedArray’ is not available for package ‘SummarizedExperiment’
# * removing ‘/usr/local/lib/R/site-library/SummarizedExperiment’

install.packages("remotes")
library(remotes)

# If we attempt to set `upgrade = "always"` in `install_github()` call, it will
# error, so set as a global variable instead. This works.
Sys.setenv("R_REMOTES_UPGRADE" = "always")

# Here's the error:
# Error in if (upgrade) { : argument is not interpretable as logical
# Calls: install_github ... install -> install_deps -> update -> update.package_deps
# Execution halted

install_github(
    repo = paste(
        "acidgenomics",
        c(
            "lintr",
            "acidtest",
            "bioverbs",
            "goalie",
            "transformer",
            "syntactic",
            "brio",
            "freerange",
            "basejump",
            "acidplots"
        ),
        sep = "/"
    ),
    dependencies = TRUE
)
update_packages(dependencies = TRUE, ask = FALSE)
