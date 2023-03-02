#!/bin/bash
#
#SBATCH --partition=gtx1080ti_11GB    
#SBATCH --output=train_BCE_SMDD_%N_%j              

python3 code/train.py --train_csv_path="../../datasets/public/BIOMETRICS/Face_Morphing/SMDD/train.csv" --max_epoch=250 --batch_size=16 --latent_size=256 --lr=0.00001 --weight_loss=100 --loss_measure=bce --is_test=False --model_path=trained_bce_SMDD_min --output_dir=output_bce_min