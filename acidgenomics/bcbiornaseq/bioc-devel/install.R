options(
    error = quote(quit(status = 1L)),
    warning = quote(quit(status = 1L))
)
library(bb8)
install("hbc/bcbioRNASeq", dependencies = TRUE)
