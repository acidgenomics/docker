# FIXME RcppEigen is failing to compile.

#5 379.0 g++: fatal error: Killed signal terminated program cc1plus
#5 379.0 compilation terminated.
#5 379.0 make[1]: *** [/opt/koopa/app/r/4.0.4/lib/R/etc/Makeconf:181: fastLm.o] Error 1
#5 379.0 make[1]: Leaving directory '/tmp/RtmpBQACKI/R.INSTALL9922fb77102/RcppEigen/src'
#5 379.0 ERROR: compilation failed for package ‘RcppEigen’
#5 379.0 * removing ‘/opt/koopa/opt/r/site-library/RcppEigen’
#5 379.0 cat: RcppNumerical.out: No such file or directory
#5 379.0 cat: apeglm.out: No such file or directory

FROM acidgenomics/r-basejump:bioc-release
MAINTAINER docker@acidgenomics.com

RUN R -e 'AcidDevTools::install("DESeqAnalysis")'
