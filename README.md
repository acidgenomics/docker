# Docker images

Acid Genomics docker images

https://cloud.docker.com/u/acidgenomics/

## Building

```sh
# [1] image  [2] tag
./build.sh basejump bioc-3.9
```

## Tag build as latest

```sh
# [1] image  [2] tag
./latest.sh basejump bioc-3.9
```

## Test R package using image

```sh
# [1] image  [2] tag  [3] package
./r-pkg-check.sh rnaseq bioc-3.9 bcbioRNASeq
```

## Clean up

Delete all dangling data:

```sh
docker system prune
```

Remove all images, not just dangling ones:

```sh
docker system prune --all
```
