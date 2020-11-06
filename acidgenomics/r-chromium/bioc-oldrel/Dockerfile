FROM acidgenomics/r-basejump:bioc-oldrel
MAINTAINER docker@acidgenomics.com

RUN koopa update --fast \
 && Rscript -e 'bb8::install("Chromium")' \
 && koopa delete-cache
