FROM acidgenomics/bioconductor:release
MAINTAINER mike@steinbaugh.com

RUN koopa update --fast \
 && Rscript -e 'bb8::install("basejump")' \
 && koopa delete-cache
