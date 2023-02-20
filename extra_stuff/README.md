# Results
Contains the results of the experiences so far, namely a .csv regarding the test set of the last tested model, 5 files with the final results for each test dataset and 1 with the training results, the best obtained model (trained) and the train_info.log file.

## Test SH Files
Contains the .sh files used to run the different tests. To be properly used, they should be placed in the same folder as the .sh train files and the "code" main folder.

## How to run

Example command to TRAIN: 
```bash
python3 code/train.py --train_csv_path="../../datasets/public/BIOMETRICS/Face_Morphing/SMDD/train.csv" --max_epoch=250 --batch_size=16 --latent_size=256 --lr=0.00001 --weight_loss=100 --loss_measure=bce --is_test=False --model_path=trained_bce_SMDD_min --output_dir=output_bce_min
```

Example command to TEST: 
```bash
python3 code/train.py --test_csv_path="../../datasets/public/BIOMETRICS/Face_Morphing/facelab_london/asml.csv" --latent_size=256 --batch_size=16 --is_train=False --model_path=trained_bce_SMDD_min --output_dir=output_bce_min
```