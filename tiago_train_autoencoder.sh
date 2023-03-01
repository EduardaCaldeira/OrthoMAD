#!/bin/bash
#
#SBATCH -p gtx1080ti_11GB                   # Partition
#SBATCH --job-name=omad_aut                 # Job name
#SBATCH -o slurm.%N.%j.out                  # STDOUT
#SBATCH -e slurm.%N.%j.err                  # STDERR



echo "OrthoMAD v2 - Bonafide Autoencoder | Started | Training"

# python code/train_autoencoder.py --data_dir /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/SMDD/os25k_bf_t_cropped --dataset BonaFideImages --model UNetAutoencoder --batchsize 32 --num_workers 2
# python code/train_autoencoder.py --data_dir /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/SMDD/os25k_bf_t_cropped --data_dir /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/SMDD/os25k_m_t_cropped --dataset BonaFideImages --model UNetAutoencoder --batchsize 32 --num_workers 2
# python code/train_autoencoder.py --data_dir /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/SMDD/os25k_bf_t_cropped --data_dir /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/SMDD/os25k_m_t_cropped --dataset BonaFideImages --model UNetAutoencoder --emb_size 128 --batchsize 32 --num_workers 2
# python code/train_autoencoder.py --data_dir /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/SMDD/os25k_bf_t_cropped --data_dir /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/SMDD/os25k_m_t_cropped --dataset BonaFideImages --model UNetAutoencoder --emb_size 64 --batchsize 32 --num_workers 2

echo "OrthoMAD v2 - Bonafide Autoencoder | Finished | Training"
