#!/bin/bash
#
#SBATCH -p gtx1080_8GB                      # Partition
#SBATCH --job-name=omad_aut                 # Job name
#SBATCH -o slurm.%N.%j.out                  # STDOUT
#SBATCH -e slurm.%N.%j.err                  # STDERR



echo "OrthoMAD v2 - Generate Bonafide Embeddings | Started | Training"


# python code/inference_autoencoder.py --data_dir /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/SMDD/os25k_bf_t_cropped --data_dir /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/SMDD/os25k_m_t_cropped --new_data_dir /nas-ctm01/datasets/public/BIOMETRICS/embeddings --dataset BonaFideImages --model UNetAutoencoder --checkpoint /nas-ctm01/homes/tgoncalv/OrthoMAD/results/bonafideimages/unetautoencoder/2023-02-17_10-14-52/weights/unetautoencoder_bonafideimages_best.pt
python code/inference_autoencoder.py --data_dir /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/SMDD/os25k_bf_t_cropped --data_dir /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/SMDD/os25k_m_t_cropped --new_data_dir /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-20_15-54-40 --dataset BonaFideImages --model UNetAutoencoder --checkpoint /nas-ctm01/homes/tgoncalv/OrthoMAD/results/bonafideimages/unetautoencoder/2023-02-20_15-54-40/weights/unetautoencoder_bonafideimages_best.pt


echo "OrthoMAD v2 - Generate Bonafide Embeddings | Started | Training"
