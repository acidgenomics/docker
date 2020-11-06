FROM acidgenomics/r-basejump:bioc-release
MAINTAINER docker@acidgenomics.com

RUN koopa update --fast \
 && Rscript -e 'bb8::install("AcidGSEA")' \
 && koopa delete-cache
