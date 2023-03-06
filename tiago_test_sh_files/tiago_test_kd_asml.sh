#!/bin/bash
#
#SBATCH -p gtx1080ti_11GB                   # Partition
#SBATCH --job-name=omdtkdmul                # Job name
#SBATCH -o slurm.%N.%j.out                  # STDOUT
#SBATCH -e slurm.%N.%j.err                  # STDERR            



# Example usage: python3 code/train.py --test_csv_path="../../datasets/public/BIOMETRICS/Face_Morphing/facelab_london/asml.csv" --latent_size=256 --batch_size=16 --is_train=False --model_path=trained_kd_SMDD_mult --output_dir=output_kd_mult



# MULT
# EMB 128
# python code/train.py --test_csv_path /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/facelab_london/asml.csv --model_name resnet18_mult --max_epoch 250 --batch_size 16 --latent_size 128 --lr 0.00001 --weight_loss 1 --loss_measure kd --is_train False --model_path /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_mult/resnet18_mult_w1_l0001/resnet18_mult_w1_l0001.pth --output_dir /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_mult/resnet18_mult_w1_l0001 --autoenc_bf_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-23_14-20-28/os25k_bf_t_cropped/ --autoenc_morph_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-23_14-20-28/os25k_m_t_cropped/ --lmbda 0.001
# python code/train.py --test_csv_path /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/facelab_london/asml.csv --model_name resnet18_mult --max_epoch 250 --batch_size 16 --latent_size 128 --lr 0.00001 --weight_loss 0.1 --loss_measure kd --is_train False --model_path /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_mult/resnet18_mult_w01_l0001/resnet18_mult_w01_l0001.pth --output_dir /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_mult/resnet18_mult_w01_l0001 --autoenc_bf_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-23_14-20-28/os25k_bf_t_cropped/ --autoenc_morph_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-23_14-20-28/os25k_m_t_cropped/ --lmbda 0.001

# EMB 64
# python code/train.py --test_csv_path /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/facelab_london/asml.csv --model_name resnet18_mult --max_epoch 250 --batch_size 16 --latent_size 64 --lr 0.00001 --weight_loss 1 --loss_measure kd --is_train False --model_path /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_mult/resnet18_mult_emb64_w1_l0001/resnet18_mult_emb64_w1_l0001.pth --output_dir /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_mult/resnet18_mult_emb64_w1_l0001 --autoenc_bf_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-25_09-04-28/os25k_bf_t_cropped/ --autoenc_morph_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-25_09-04-28/os25k_m_t_cropped/ --lmbda 0.001
# python code/train.py --test_csv_path /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/facelab_london/asml.csv --model_name resnet18_mult --max_epoch 250 --batch_size 16 --latent_size 64 --lr 0.00001 --weight_loss 0.1 --loss_measure kd --is_train False --model_path /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_mult/resnet18_mult_emb64_w01_l0001/resnet18_mult_emb64_w01_l0001.pth --output_dir /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_mult/resnet18_mult_emb64_w01_l0001 --autoenc_bf_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-25_09-04-28/os25k_bf_t_cropped/ --autoenc_morph_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-25_09-04-28/os25k_m_t_cropped/ --lmbda 0.001



# MIN
# EMB 128
# python code/train.py --test_csv_path /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/facelab_london/asml.csv --model_name resnet18_min --max_epoch 250 --batch_size 16 --latent_size 128 --lr 0.00001 --weight_loss 1 --loss_measure kd --is_train False --model_path /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_min/resnet18_min_w1_l0001/resnet18_min_w1_l0001.pth --output_dir /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_min/resnet18_min_w1_l0001 --autoenc_bf_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-23_14-20-28/os25k_bf_t_cropped/ --autoenc_morph_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-23_14-20-28/os25k_m_t_cropped/ --lmbda 0.001
# python code/train.py --test_csv_path /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/facelab_london/asml.csv --model_name resnet18_min --max_epoch 250 --batch_size 16 --latent_size 128 --lr 0.00001 --weight_loss 0.1 --loss_measure kd --is_train False --model_path /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_min/resnet18_min_w01_l0001/resnet18_min_w01_l0001.pth --output_dir /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_min/resnet18_min_w01_l0001 --autoenc_bf_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-23_14-20-28/os25k_bf_t_cropped/ --autoenc_morph_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-23_14-20-28/os25k_m_t_cropped/ --lmbda 0.001

# EMB 64
# python code/train.py --test_csv_path /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/facelab_london/asml.csv --model_name resnet18_min --max_epoch 250 --batch_size 16 --latent_size 64 --lr 0.00001 --weight_loss 1 --loss_measure kd --is_train False --model_path /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_min/resnet18_min_emb64_w1_l0001/resnet18_min_emb64_w1_l0001.pth --output_dir /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_min/resnet18_min_emb64_w1_l0001 --autoenc_bf_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-25_09-04-28/os25k_bf_t_cropped/ --autoenc_morph_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-25_09-04-28/os25k_m_t_cropped/ --lmbda 0.001
# python code/train.py --test_csv_path /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/facelab_london/asml.csv --model_name resnet18_min --max_epoch 250 --batch_size 16 --latent_size 64 --lr 0.00001 --weight_loss 0.1 --loss_measure kd --is_train False --model_path /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_min/resnet18_min_emb64_w01_l0001/resnet18_min_emb64_w01_l0001.pth --output_dir /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_kd_SMDD_min/resnet18_min_emb64_w01_l0001 --autoenc_bf_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-25_09-04-28/os25k_bf_t_cropped/ --autoenc_morph_path /nas-ctm01/datasets/public/BIOMETRICS/embeddings/unetautoencoder/2023-02-25_09-04-28/os25k_m_t_cropped/ --lmbda 0.001
