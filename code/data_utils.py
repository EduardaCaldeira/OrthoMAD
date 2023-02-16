# Imports
import os
import cv2
from PIL import Image
import pandas as pd

# PyTorch Imports
from torch.utils.data import Dataset
from torchvision import transforms

# Sklearn Imports
from sklearn.model_selection import train_test_split



# Class: FaceDataset
class FaceDataset(Dataset):
    def __init__(self, file_name, split, input_size=224, pre_mean=[0.5, 0.5, 0.5], pre_std=[0.5, 0.5, 0.5]):
        

        assert split in ("train", "validation", "test"), f"Data split, '{split}', not valid."
        
        
        # Get the .CSV filename
        self.csv = file_name

        # Read the .CSV
        self.data = pd.read_csv(file_name)
        self.split = split

        # Get images paths and their corresponding labels
        image_paths = self.data.copy().values[:, 0]
        labels_str = self.data.copy().values[:, 1]


        # Generate the data split
        if split in ("train", "validation"):

            images_paths_train, images_paths_val, labels_str_train, labels_str_val = train_test_split(
                image_paths,
                labels_str,
                test_size=0.15,
                random_state=420
            )

            if split == "train":
                self.images_paths = images_paths_train
                self.labels_str = labels_str_train
                self.transform = transforms.Compose(
                    [
                        transforms.ToPILImage(),
                        transforms.Resize([input_size, input_size]),
                        transforms.RandomHorizontalFlip(),
                        transforms.ToTensor(),
                        transforms.Normalize(mean=pre_mean, std=pre_std),
                    ]
                )

            else:
                self.images_paths = images_paths_val
                self.labels_str = labels_str_val
                self.transform = transforms.Compose(
                    [
                        transforms.ToPILImage(),
                        transforms.Resize([input_size, input_size]),
                        transforms.ToTensor(),
                        transforms.Normalize(mean=pre_mean, std=pre_std),
                    ]
                )
        
        else:
            self.images_paths = image_paths
            self.labels_str = labels_str
            self.transform = transforms.Compose(
                [
                    transforms.ToPILImage(),
                    transforms.Resize([input_size, input_size]),
                    transforms.ToTensor(),
                    transforms.Normalize(mean=pre_mean, std=pre_std),
                ]
            )



    # Method: __len__
    def __len__(self):
        return len(self.images_paths)


    # Method: __getitem__
    def __getitem__(self, index):
        image_path = self.images_paths[index]
        label_str = self.labels_str[index]
        label = 1 if label_str == 'bonafide' else 0


        # Open image data
        try:
            if self.split in ("train", "validation"):
                image = cv2.imread(self.csv[:len(self.csv)-9]+image_path[2:])
            else:
                image = cv2.imread(self.csv[:62]+image_path[2:])
            
            # Apply the transform to the image
            image = self.transform(image)
        
        except ValueError:
            print(image_path)

        
        return image, label



# Class: BonaFideImages
class BonaFideImages(Dataset):
    def __init__(self, data_path, transform=None):

        # Get images
        self.data_path = data_path
        self.images_fnames = [i for i in os.listdir(data_path) if not i.startswith('.')]
        self.transform = transform


    # Method: __len__
    def __len__(self):
        return len(self.images_fnames)


    # Method: __getitem__
    def __getitem__(self, index):

        # Image path
        image_path = os.path.join(self.data_path, self.images_fnames[index])

        # Open image data
        try:
            image = Image.open(image_path).convert("RGB")

            
            # Apply the transform to the image
            if self.transform:
                image = self.transform(image)
        
        except ValueError:
            print(image_path)

        
        return image, image
