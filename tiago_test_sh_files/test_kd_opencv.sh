#!/bin/bash
#
#SBATCH --partition=gpu          
#SBATCH --output=test_kd_opencv_mult_%N_%j              

python3 code/train.py --test_csv_path="../../datasets/public/BIOMETRICS/Face_Morphing/facelab_london/opencv.csv" --latent_size=256 --batch_size=16 --is_train=False --model_path=trained_kd_SMDD_mult --output_dir=output_kd_mult