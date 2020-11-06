FROM acidgenomics/r-basejump:bioc-oldrel
MAINTAINER mike@steinbaugh.com

RUN koopa update --fast \
 && Rscript -e 'bb8::install("pointillism")' \
 && koopa delete-cache
