#!/bin/bash
#
#SBATCH --partition=gpu          
#SBATCH --output=test_ortho_opencv_min_%N_%j              

python3 code/train.py --test_csv_path="../../datasets/public/BIOMETRICS/Face_Morphing/facelab_london/opencv.csv" --latent_size=256 --batch_size=16 --is_train=False --model_path=trained_ortho_SMDD_min --output_dir=output_ortho_min