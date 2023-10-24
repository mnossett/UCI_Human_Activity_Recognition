Peer-graded Assignment: Getting and Cleaning Data Course Project
Martin Nossett
==================================================================

Data set analysed:

Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
==================================================================

What the raw data represents:

30 volunteers performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, 
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded 
accelerometer and gyroscope, observational data was collected and processed.

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body 
  acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
==================================================================

Processed data:

The raw data files were processed so the following was achieved:
1. training and the test sets were merged to create one data set.
2. descriptive activity names where used to name the activities in the data set
3. the data set was appropriately labeled with descriptive variable names.
4. the data set included only the subject id, descriptive activity names, measurements on the mean 
   and standard deviation for each measurement. 
5. From the data set in step 4, a second, independent tidy data set was created with the average of
each variable for each activity and each subject.


Legend for R Code:

zipurl = location of the zip file online.

activities =  used for the "activity labels" which links the class labels with their activity name.

column_names = used for the "features" data which are the time & frequency variables for the 
                observations.
                
train_measurements = used for the observation of the time & frequency variables for the sample data 
                used to train the model.

train_activity = used for the class labels that represent the activity name in the sample data 
                used to train the model.

train_subject = used for the labels which identify the volunteer (subject) on which the observations
                were made in the sample data used to train the model.

test_measurements = used for the observation of the time & frequency variables for the sample data 
                used to test the model.

test_activity = used for the class labels that represent the activity name in the sample data 
                used to test the model.

test_subject = used for the labels which identify the volunteer (subject) on which the observations
                were made in the sample data used to test the model.
                
train_df = represents the data frame created upon combining the data from "train_measurements", 
                "train_activity", and "train_subject".

test_df = represents the data frame created upon combining the data from "test_measurements", 
                "test_activity", and "test_subject".

combined_df = represents the data frame created upon combining "train_df" and "test_df".

subset_df = represents the data frame created by removing time & frequency variables columns from 
                "combined_df" that didn't show mean or standard deviation of a measurement.

parsed_df = represents the data frame when grouping multiple observations across activities by each 
                subject in "subset_df" and then taking the average for each of the measurement 
                columns.