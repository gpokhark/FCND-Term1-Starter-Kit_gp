#!/bin/bash
source activate fcnd_new
conda install conda-build -y
conda info --envs
conda install matplotlib=2.1.2