FROM acidgenomics/bioconductor:oldrel
MAINTAINER mike@steinbaugh.com

RUN koopa update --fast \
 && Rscript -e 'bb8::install("AcidGenomes")' \
 && koopa delete-cache
