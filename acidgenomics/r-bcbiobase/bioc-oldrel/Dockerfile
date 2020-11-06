FROM acidgenomics/r-basejump:bioc-oldrel
MAINTAINER mike@steinbaugh.com

RUN koopa update --fast \
 && Rscript -e 'bb8::install("bcbioBase")' \
 && koopa delete-cache
