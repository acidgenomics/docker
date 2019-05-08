# Docker recipes

Dockerfile source scripts for [Acid Genomics Docker Hub images](https://cloud.docker.com/u/acidgenomics/).

## Build a specific image version

Here's how to build the basejump toolkit specifically against Bioconductor 3.9.

Note that this script calls the recipe defined in `basejump/bioc-3.9/`:

```sh
# [1] image  [2] tag
./build.sh basejump bioc-3.9
```

## Build all versions of an image

Here's how to build all versions of an image:

```sh
./build-all.Rscript basejump
```

That code will build basejump against bioc-3.7, bioc-3.8, etc.

## Tag build as latest

Here's how to tag a versioned build as `latest`:

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

Delete all dangling data (recommended):

```sh
docker system prune
```

Remove all images, not just dangling ones:

```sh
docker system prune --all --force
```
