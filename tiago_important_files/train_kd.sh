#!/bin/bash
#
#SBATCH --partition=gpu          
#SBATCH --output=train_KD_SMDD_mult_%N_%j              

python3 code/train.py --train_csv_path="../../datasets/public/BIOMETRICS/Face_Morphing/SMDD/train.csv" --max_epoch=250 --batch_size=16 --latent_size=256 --lr=0.00001 --weight_loss=0.1 --loss_measure=kd --is_test=False --model_path=trained_kd_SMDD_mult --output_dir=output_kd_mult --autoenc_bf_path="../../datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-20_15-54-40/os25k_bf_t_cropped/" --autoenc_morph_path="../../datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-20_15-54-40/os25k_m_t_cropped/" --lmbda=0.001
