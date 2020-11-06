FROM acidgenomics/bioconductor:devel
MAINTAINER docker@acidgenomics.com

RUN koopa update --fast \
 && Rscript -e 'bb8::install("AcidTest", dependencies = NA)' \
 && koopa delete-cache
