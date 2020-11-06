FROM acidgenomics/r-basejump:bioc-devel
MAINTAINER mike@steinbaugh.com

RUN koopa update --fast \
 && Rscript -e 'bb8::install("AcidGSEA")' \
 && koopa delete-cache
