# Code and reporrt for Kaggle Competition [Open Problems – Single-Cell Perturbations (2023)](https://www.kaggle.com/competitions/open-problems-single-cell-perturbations/)

## Setting up the environment
The environment for this project is based on the competition's Saturn Cloud instance and image. Deatils to set up the environment is:

- Instance: T4-8XLarge - 32 cores - 128 GB RAM - 1 GPU / 300GB disk space
- Working directory: /home/jovyan/kaggle/working
- Start script:
sudo chown jovyan:jovyan /home/jovyan/kaggle
mkdir -p /home/jovyan/kaggle/input
mkdir -p /home/jovyan/kaggle/working
aws s3 sync s3://saturn-kaggle-datasets/open-problems-single-cell-perturbations/ /home/jovyan/kaggle/input/open-problems-single-cell-perturbations --no-sign-request
sudo ln -s /home/jovyan/kaggle /kaggle

Directories should be adjusted by the user, in setting up the environment, and in Python and R files.

- Install dependencies:
pip -r requirements.txt


## Downloading LINCS data
Download LINCS LDS-1613 (2021) data from https://lincsportal.ccs.miami.edu/dcic/api/download?path=LINCS_Data/BroadT_LINCS&file=LDS-1613_1.0.tar.gz and extract it to working/lincs/2021

Download LINCS (2020) geneinfo data from https://s3.amazonaws.com/macchiato.clue.io/builds/LINCS2020/geneinfo_beta.txt and put it in working/lincs/2020 (as geneinfo data is not present in the first link)

## Downloading Homer data
Download Homer transcription factors mapped to hg38 Human Genome Assembly from http://homer.ucsd.edu/homer/data/motifs/homer.KnownMotifs.hg38.191020.bed.gz and extract it in working/tf-homer

Download raw Homer motifs data from http://homer.ucsd.edu/homer/custom.motifs and put it in working/tf-homer

## Downloading hr38 Human Genome Annotation
Download gr38 Human Genome Annotations from https://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_44/gencode.v44.annotation.gtf.gz and extract it in working/genome

## Code
Code comes in two parts: Two python notebooks to incorporate LINCS and ATAC data and several R codes for batch effect correction, target learning, and causal structure learning, as described in the [report](https://github.com/kavaryan/sc-pertb/blob/master/report.pdf).


