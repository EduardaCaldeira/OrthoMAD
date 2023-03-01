#!/bin/bash
#
#SBATCH -p gtx1080ti_11GB                   # Partition
#SBATCH --job-name=omdtkdmul                # Job name
#SBATCH -o slurm.%N.%j.out                  # STDOUT
#SBATCH -e slurm.%N.%j.err                  # STDERR        

python code/train.py --train_csv_path /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/SMDD/train.csv --model_name resnet18_mult --max_epoch 250 --batch_size 16 --latent_size 128 --lr 0.00001 --weight_loss 1 --loss_measure kd --is_test False --model_path /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_mult/resnet18_mult_w1_l0001/resnet18_mult_w1_l0001.pth --output_dir /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_mult/resnet18_mult_w1_l0001 --autoenc_bf_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-23_14-20-28/os25k_bf_t_cropped/ --autoenc_morph_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-23_14-20-28/os25k_m_t_cropped/ --lmbda 0.001
python code/train.py --train_csv_path /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/SMDD/train.csv --model_name resnet18_mult --max_epoch 250 --batch_size 16 --latent_size 128 --lr 0.00001 --weight_loss 0.1 --loss_measure kd --is_test False --model_path /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_mult/resnet18_mult_w01_l0001/resnet18_mult_w01_l0001.pth --output_dir /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_mult/resnet18_mult_w01_l0001 --autoenc_bf_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-23_14-20-28/os25k_bf_t_cropped/ --autoenc_morph_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-23_14-20-28/os25k_m_t_cropped/ --lmbda 0.001
