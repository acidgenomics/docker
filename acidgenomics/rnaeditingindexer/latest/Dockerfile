# """
# RNAEditingIndexer
# https://github.com/a2iEditing/RNAEditingIndexer/
# Updated 2020-08-18.
# """

FROM acidgenomics/biocontainers:latest

USER root
ENV BAM_UTILS_PATH="bam" \
    BEDTOOLS_PATH="bedtools" \
    DEV_ROOT="/bin/AEI/RNAEditingIndexer" \
    DONT_DOWNLOAD="false" \
    DONT_WRITE="false" \
    IS_UNIX="true" \
    JAVA_HOME="/opt/conda" \
    PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/conda/bin:/home/biodocker/bin:/bin/AEI/RNAEditingIndexer" \
    PYTHON27_PATH="python" \
    RESOURCES_DIR="/bin/AEI/RNAEditingIndexer/Resources" \
    SAMTOOLS_PATH="samtools"

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD /bin/AEI/RNAEditingIndexer/RNAEditingIndex
