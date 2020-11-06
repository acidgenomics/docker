FROM acidgenomics/r-basejump:bioc-release
MAINTAINER mike@steinbaugh.com

RUN koopa update --fast \
 && Rscript -e 'bb8::install("DESeqAnalysis")' \
 && koopa delete-cache
