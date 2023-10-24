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