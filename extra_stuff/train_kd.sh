#!/bin/bash
#
#SBATCH --partition=gpu          
#SBATCH --output=train_KD_SMDD_%N_%j              

python3 code/train.py --train_csv_path="../../datasets/public/BIOMETRICS/Face_Morphing/SMDD/train.csv" --max_epoch=250 --batch_size=16 --latent_size=256 --lr=0.00001 --weight_loss=100 --loss_measure=KD --is_test=False --model_path=trained_kd_SMDD_min --output_dir=output_kd_min