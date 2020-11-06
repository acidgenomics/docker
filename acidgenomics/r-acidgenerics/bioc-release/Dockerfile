FROM acidgenomics/bioconductor:release
MAINTAINER mike@steinbaugh.com

RUN koopa update --fast \
 && Rscript -e 'bb8::install("AcidGenerics")' \
 && koopa delete-cache
