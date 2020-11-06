FROM acidgenomics/bioconductor:devel
MAINTAINER mike@steinbaugh.com

RUN koopa update --fast \
 && Rscript -e 'bb8::install("syntactic")' \
 && koopa delete-cache
