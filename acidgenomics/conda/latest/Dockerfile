FROM public.ecr.aws/acidgenomics/koopa:debian
RUN koopa update koopa \
 && koopa install conda \
 && /opt/koopa/bin/conda config --add channels bioconda \
 && /opt/koopa/bin/conda config --add channels conda-forge \
 && /opt/koopa/bin/conda config --set channel_priority strict
