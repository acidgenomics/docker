ARG CONDA="${KOOPA_PREFIX:?}/bin/conda"
FROM public.ecr.aws/acidgenomics/koopa:debian
RUN koopa update koopa \
 && koopa install conda \
 && "$CONDA" config --add channels bioconda \
 && "$CONDA" config --add channels conda-forge \
 && "$CONDA" config --set channel_priority strict
