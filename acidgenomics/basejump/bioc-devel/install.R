options(
    error = quote(quit(status = 1L)),
    warning = quote(quit(status = 1L))
)
stopifnot(isTRUE(nzchar(Sys.getenv("GITHUB_PAT"))))
library(bb8)
install(
    pkgs = paste(
        "acidgenomics",
        c(
            "goalie",
            "syntactic",
            "pipette",
            "basejump",
            "bb8"
        ),
        sep = "/"
    ),
    dependencies = TRUE,
    reinstall = TRUE
)
