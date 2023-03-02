#!/bin/bash
#
#SBATCH -p gtx1080ti_11GB                   # Partition
#SBATCH --job-name=omdtot                   # Job name
#SBATCH -o slurm.%N.%j.out                  # STDOUT
#SBATCH -e slurm.%N.%j.err                  # STDERR 

# MULT
python code/train.py --train_csv_path /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/SMDD/train.csv --model_name resnet18_mult --max_epoch 250 --batch_size 16 --latent_size 128 --lr 0.00001 --weight_loss 100 --loss_measure ortho --is_test False --model_path /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_ortho_SMDD_mult/resnet18_mult_w100/resnet18_mult_w100.pth --output_dir /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_ortho_SMDD_mult/resnet18_mult_w100


# MIN
python code/train.py --train_csv_path /nas-ctm01/datasets/public/BIOMETRICS/Face_Morphing/SMDD/train.csv --model_name resnet18_min --max_epoch 250 --batch_size 16 --latent_size 128 --lr 0.00001 --weight_loss 100 --loss_measure ortho --is_test False --model_path /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_ortho_SMDD_min/resnet18_min_w100/resnet18_min_w100.pth --output_dir /nas-ctm01/homes/tgoncalv/OrthoMAD/results/trained_ortho_SMDD_min/resnet18_min_w100