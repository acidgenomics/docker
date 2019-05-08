#!/usr/bin/env Rscript

# Quit and return non-zero status code on error.
options(
    error = quote(quit(status = 1L)),
    verbose = TRUE
)

args <- commandArgs(trailingOnly = FALSE)
posArgs <- commandArgs(trailingOnly = TRUE)

# Get the script path from the command arguments.
fileArg <- "--file="
rscript <- sub(
    pattern = fileArg,
    replacement = "",
    x = args[grep(fileArg, args)]
)
baseDir <- dirname(rscript)

# Specify the image name as a positional argument.
image <- posArgs[[1L]]
stopifnot(
    is.character(image),
    dir.exists(image)
)
tags <- list.dirs(path = image, full.names = FALSE, recursive = FALSE)
stopifnot(length(tags) > 0L)

mapply(
    tag = tags,
    MoreArgs = list(image = image),
    FUN = function(image, tag) {
        command <- paste(
            file.path(baseDir, "build.sh"),
            image, tag
        )
        print(command)
        system(command = command)
    },
    USE.NAMES = FALSE,
    SIMPLIFY = FALSE
)
