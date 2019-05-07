#!/usr/bin/env Rscript

# Get the script path from the command arguments.
args <- commandArgs(trailingOnly = FALSE)
fileArg <- "--file="
rscript <- sub(
    pattern = fileArg,
    replacement = "",
    x = args[grep(fileArg, args)]
)
baseDir <- dirname(rscript)

image <- "basejump"
tags <- list.dirs(path = image, full.names = FALSE, recursive = FALSE)

mapply(
    tag = tags,
    MoreArgs = list(image = image),
    FUN = function(image, tag) {
        command <- paste(
            file.path(baseDir, "build.sh"),
            image, tag
        )
        print(command)
        # FIXME Note that `system2()` doesn't work here currently.
        system(command = command)
    },
    USE.NAMES = FALSE,
    SIMPLIFY = FALSE
)
