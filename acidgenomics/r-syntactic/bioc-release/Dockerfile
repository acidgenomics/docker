FROM acidgenomics/bioconductor:release
MAINTAINER docker@acidgenomics.com

RUN koopa update --fast \
 && Rscript -e 'bb8::install("syntactic")' \
 && koopa delete-cache
