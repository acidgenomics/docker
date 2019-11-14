FROM biocontainers/biocontainers:latest

USER root

ENV BAM_UTILS_PATH="bam"
ENV BEDTOOLS_PATH="bedtools"
ENV DEV_ROOT="/bin/AEI/RNAEditingIndexer"
ENV DONT_DOWNLOAD="false"
ENV DONT_WRITE="false"
ENV IS_UNIX="true"
ENV JAVA_HOME="/opt/conda"
ENV PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/conda/bin:/home/biodocker/bin:/bin/AEI/RNAEditingIndexer"
ENV PYTHON27_PATH="python"
ENV RESOURCES_DIR="/bin/AEI/RNAEditingIndexer/Resources"
ENV SAMTOOLS_PATH="samtools"

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD /bin/AEI/RNAEditingIndexer/RNAEditingIndex
