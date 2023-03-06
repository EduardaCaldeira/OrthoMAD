#!/bin/bash
#
#SBATCH -p gtx1080ti_11GB                   # Partition
#SBATCH --job-name=omdtot                   # Job name
#SBATCH -o slurm.%N.%j.out                  # STDOUT
#SBATCH -e slurm.%N.%j.err                  # STDERR



# Example usage: python3 code/train.py --test_csv_path="../../datasets/public/BIOMETRICS/Face_Morphing/facelab_london/stylegan.csv" --latent_size=256 --batch_size=16 --is_train=False --model_path=trained_ortho_SMDD_min --output_dir=output_ortho_min



# MULT
# EMB SIZE 128
python code/train.py --test_csv_path /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/facelab_london/stylegan.csv --model_name resnet18_mult --max_epoch 250 --batch_size 16 --latent_size 128 --lr 0.00001 --weight_loss 100 --loss_measure ortho --is_train False --model_path /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_ortho_SMDD_mult/resnet18_mult_w100/resnet18_mult_w100.pth --output_dir /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_ortho_SMDD_mult/resnet18_mult_w100

# EMB SIZE 64
python code/train.py --test_csv_path /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/facelab_london/stylegan.csv --model_name resnet18_mult --max_epoch 250 --batch_size 16 --latent_size 64 --lr 0.00001 --weight_loss 100 --loss_measure ortho --is_train False --model_path /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_ortho_SMDD_mult/resnet18_mult_emb64_w100/resnet18_mult_emb64_w100.pth --output_dir /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_ortho_SMDD_mult/resnet18_mult_emb64_w100



# MIN
# EMB 128
python code/train.py --test_csv_path /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/facelab_london/stylegan.csv --model_name resnet18_min --max_epoch 250 --batch_size 16 --latent_size 128 --lr 0.00001 --weight_loss 100 --loss_measure ortho --is_train False --model_path /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_ortho_SMDD_min/resnet18_min_w100/resnet18_min_w100.pth --output_dir /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_ortho_SMDD_min/resnet18_min_w100

# EMB 64
python code/train.py --test_csv_path /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/facelab_london/stylegan.csv --model_name resnet18_min --max_epoch 250 --batch_size 16 --latent_size 64 --lr 0.00001 --weight_loss 100 --loss_measure ortho --is_train False --model_path /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_ortho_SMDD_min/resnet18_min_emb64_w100/resnet18_min_emb64_w100.pth --output_dir /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_ortho_SMDD_min/resnet18_min_emb64_w100
