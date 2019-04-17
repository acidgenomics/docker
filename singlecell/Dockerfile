# Acid Genomics single-cell RNA-seq image
# Bioconductor 3.8 / R 3.5.3

FROM acidgenomics/rnaseq
MAINTAINER mike@steinbaugh.com

# Pass through `GITHUB_PAT` to install R packages from GitHub.
ARG GITHUB_PAT

WORKDIR /tmp

# This is needed to install monocle dependencies.
RUN apt-get install -y libudunits2-dev

# reticulate ===================================================================
# python3 doesn't currently work right for virtual environments with this image.
# > RUN apt-get install -y python3-venv
# > RUN python3 -m venv ~/.virtualenvs/reticulate
RUN python2.7 -m pip install --upgrade --user virtualenv
ADD reticulate.R .
RUN R -f reticulate.R

# Seurat 3 =====================================================================
RUN R -e 'BiocManager::install("Seurat")'

# monocle 3 (alpha) ============================================================
# > RUN R -e 'BiocManager::install("monocle")'
RUN R -e 'BiocManager::install("cole-trapnell-lab/DDRTree", ref = "simple-ppt-like")'
RUN R -e 'BiocManager::install("cole-trapnell-lab/L1-graph")'

# rgl dependency will fail to build.
# X11 not found but required, configure aborted.
# > * installing *source* package ‘rgl’ ...
# > [...]
# > checking for X... no
# > configure: error: X11 not found but required, configure aborted.
# > ERROR: configuration failed for package ‘rgl’

# Install rgl
# https://singularity-hub.org/containers/5533
RUN apt-get install -y xorg libglu1-mesa-dev libx11-dev libfreetype6-dev
RUN R -e 'BiocManager::install("rgl")' 

# Install sf
# This requires gdal-config (libgdal)
# https://stackoverflow.com/questions/12141422
RUN apt-get install -y libgdal-dev
RUN R -e 'BiocManager::install("sf")'

RUN R -e 'BiocManager::install("cole-trapnell-lab/monocle-release", ref = "monocle3_alpha")'

# Other Trapnell Lab packages ==================================================
# cicero
# > install("cole-trapnell-lab/cicero")

# garnett
# > install("cole-trapnell-lab/garnett")

# Acid Genomics ================================================================
RUN R -e 'BiocManager::install("acidgenomics/bcbioSingleCell")'
RUN R -e 'BiocManager::install("acidgenomics/pointillism")'

# Suggested ====================================================================
RUN R -e 'BiocManager::install("splatter")'

WORKDIR /
