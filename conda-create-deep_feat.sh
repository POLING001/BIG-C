#!/bin/bash
conda create -y -n deep_feat pytorch opencv scipy matplotlib torchvision requests 
source activate deep_feat
pip install autograd

