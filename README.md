# 3D Gaussian Splatting

This repository is implemented for a final course project.

The code is based on the implementation from https://github.com/graphdeco-inria/gaussian-splatting/tree/main, to whom we give sincere thanks

## Environment Setup

```
# HTTPS
git clone https://github.com/graphdeco-inria/gaussian-splatting --recursive
conda env create --file environment.yml
conda activate gaussian_splatting
```

## Download dataset and model weight

Dataset, final model file and rendered picture of truck is available in google drive https://drive.google.com/drive/folders/1Zfi5ivCpfUscO-o6aNWWEDHDkhfZcXlO?usp=sharing

## Train and Eval

```
python train.py -s <path to COLMAP or NeRF Synthetic dataset> -m <output path> --eval
python render.py -s <path to COLMAP or NeRF Synthetic dataset> -m <output path>
python metrics.py -s <path to COLMAP or NeRF Synthetic dataset> -m <output path>
```
