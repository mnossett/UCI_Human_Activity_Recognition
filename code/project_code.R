## DOWNLOAD AND SAVE RAW DATA TO "raw_data" FOLDER
zipurl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(zipurl, destfile="./raw_data/UCI.zip", mode="wb")
unzip(zipfile = "./raw_data/UCI.zip", exdir = "./raw_data/")


## READ DATA FILES THAT WERE UNZIPPED
setwd("./raw_data/UCI HAR Dataset")
library(readr)

#  read identifying files for data sets
activities = read_table("activity_labels.txt", col_names=FALSE)
column_names = read_table("features.txt", col_names=FALSE)

# read data used to train the model
train_measurements = read_table("./train/X_train.txt", col_names=FALSE)
train_activity = read_table("./train/y_train.txt", col_names=FALSE)
train_subject = read_table("./train/subject_train.txt", col_names=FALSE)

# read data used to test the model
test_measurements = read_table("./test/X_test.txt", col_names=FALSE)
test_activity = read_table("./test/y_test.txt", col_names=FALSE)
test_subject = read_table("./test/subject_test.txt", col_names=FALSE)


## COMBINE DATA FROM THE VARIOUS FILES
library(tidyverse)

# combine data columns from train_subject and train_test_activity with train_measurements table 
train_df = cbind(train_subject, train_activity, train_measurements)
# add a column at the end to show data is from the subset used to train the model
train_df$data_set = c("train")

# combine data columns from test_subject and test_test_activity with test_measurements table
test_df = cbind(test_subject, test_activity, test_measurements)
# add a column at the end to show data is from the subset used to test the model
test_df$data_set = c("test")

# combine the model training data with the model testing data
combined_df = rbind(train_df, test_df)
# add column names to the combined data frame
colnames(combined_df)= c("subject", "activity", column_names[[2]], "data_set")

# swap activity descriptions for the numerical activity ids in the combined data frame
combined_df$activity = factor(combined_df$activity, levels=activities[[1]], 
                              labels = activities[[2]])


## EXTRACT "subject", "activity", and mean and standard deviation columns for each measurement
subset_df = select(combined_df, matches("mean.*|std.*"))








