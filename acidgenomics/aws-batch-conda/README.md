# AWS Batch Conda

AWS Batch Conda fetch-and-run image.

Set `BATCH_FILE_URL` to script path (e.g. `s3://batch/script.sh`).

## Example script

The AWS Batch Conda image is particularly useful for running software available on [Bioconda](https://bioconda.github.io).

The image comes preloaded with [koopa](https://koopa.acidgenomics.com/), which contains some functions for scripting conda.

Here's an example Bash script chaining multiple conda environments together:

```bash
#!/usr/bin/env bash

# shellcheck source=/dev/null
source "$(koopa header bash)"

koopa::conda_create_env samtools
koopa::conda_create_env bamtools

# samtools  {{{1
koopa::activate_conda_env samtools
conda list
samtools --version
koopa::deactivate_conda

# bamtools  {{{1
koopa::activate_conda_env bamtools
conda list
bamtools --version
koopa::deactivate_conda
```
