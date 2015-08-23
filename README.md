## Introduction

The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The data for this project is at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Loading Data

Software assumes that above zip file is extracted in directory called data in working directory.

Following files are read from the dataset:
* data/UCI HAR Dataset/train/X_train.txt
* data/UCI HAR Dataset/train/y_train.txt
* data/UCI HAR Dataset/train/subject_train.txt
* data/UCI HAR Dataset/test/X_test.txt
* data/UCI HAR Dataset/test/y_test.txt
* data/UCI HAR Dataset/test/subject_test.txt
* data/UCI HAR Dataset/features.txt
* data/UCI HAR Dataset/activity_labels.txt

First six files contain train and test data. Features.txt contains a list of features which are used to name columns. Activity labels contains id and name for activities recorded in the dataset.

## Preparation of Data

The function merges train and test data to form combined data. Relevant features containing data for mean and standard deviation are extracted from combined data to create activity data. Activity data is then finally merged with activity labels along with subject id.

Features are read in to provide raw column names for activity data. Raw column names are then used to form more descriptive column names to be attached to data. Codebook provides information about all the column names in tidy data.

From the tidy data, a second data set is created with the average of each variable for each activity and each subject. This grouped data set is then written out to file data/tidyData.txt




