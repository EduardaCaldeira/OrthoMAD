#!/bin/bash
#
#SBATCH --partition=gpu          
#SBATCH --output=test_bce_asml_min_%N_%j              

python3 code/train.py --test_csv_path="../../datasets/public/BIOMETRICS/Face_Morphing/facelab_london/asml.csv" --latent_size=256 --batch_size=16 --is_train=False --model_path=trained_bce_SMDD_min --output_dir=output_bce_min