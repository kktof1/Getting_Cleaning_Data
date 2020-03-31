Getting_Cleaning_Data
===================================

This README document is to describe  
  
1. how my script works  
  
2. the code book for the tidy data
  
  
### 1. Script working steps

To run this script two condition is needed  

* **scrpt** : the script, named with **run_analysis.R** should be in working directory  
* **raw data** : the raw data directory, named with **UCI HAR Dataset** should b in working directory 
  
This is step how my script works

0. Read raw data files
- Read all txt files to the same name data frames 
1. Merges the training and the test sets to create 
- Merge only x_train and x_test at this stage
2. Extracts only the measurements on the mean and standard deviation for each measurement.
- Extract 2nd column(feature name) from features (<- feature.txt)
- Names the one data with the feature names
- Extract columns whitch has "mean()" or "std()" on its name
3. Uses descriptive activity names to name the activities in the data set
- Extract 2nd column(activity name) from activity_labelss (<- activity_labels.txt)
- Merge activity label of traning & test data
- For all the activity, convert its index number to the charactor vector
- Mege the activity to the extracted data
4. Appropriately labels the data set with descriptive variable names.
- Name first column as activity
- Exchange characters of "-" as ".", "()" as "" on the data names
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- Merge subject of traning & test data
- Mege the subject to the extracted data with activity
- Name first column as subject
- Create tidy data
  
  
### 2. Code book

The tidy_data has 180 observations with 81 variables for each obs  

* **subject** : [Range : 1~30] One number indicates a person which volunteered fo r this test  
* **activity** : [Label : WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING] Each label indicates what activity a subject took during the test period  
* **tBodyAcc.mean.X** : This is a time domain mean value for bodyacc  of a subject in an activity  
* **tBodyAcc.mean.Y** : This is a time domain mean value for bodyacc  of a subject in an activity  
* **tBodyAcc.mean.Z** : This is a time domain mean value for bodyacc  of a subject in an activity  
* **tBodyAcc.std.X** : This is a time domain std value for bodyacc  of a subject in an activity  
* **tBodyAcc.std.Y** : This is a time domain std value for bodyacc  of a subject in an activity  
* **tBodyAcc.std.Z** : This is a time domain std value for bodyacc  of a subject in an activity  
* **tGravityAcc.mean.X** : This is a time domain mean value for gravityacc  of a subject in an activity  
* **tGravityAcc.mean.Y** : This is a time domain mean value for gravityacc  of a subject in an activity  
* **tGravityAcc.mean.Z** : This is a time domain mean value for gravityacc  of a subject in an activity  
* **tGravityAcc.std.X** : This is a time domain std value for gravityacc  of a subject in an activity  
* **tGravityAcc.std.Y** : This is a time domain std value for gravityacc  of a subject in an activity  
* **tGravityAcc.std.Z** : This is a time domain std value for gravityacc  of a subject in an activity  
* **tBodyAccJerk.mean.X** : This is a time domain mean value for bodyacc with jerk transformation  of a subject in an activity  
* **tBodyAccJerk.mean.Y** : This is a time domain mean value for bodyacc with jerk transformation  of a subject in an activity  
* **tBodyAccJerk.mean.Z** : This is a time domain mean value for bodyacc with jerk transformation  of a subject in an activity  
* **tBodyAccJerk.std.X** : This is a time domain std value for bodyacc with jerk transformation  of a subject in an activity  
* **tBodyAccJerk.std.Y** : This is a time domain std value for bodyacc with jerk transformation  of a subject in an activity  
* **tBodyAccJerk.std.Z** : This is a time domain std value for bodyacc with jerk transformation  of a subject in an activity  
* **tBodyGyro.mean.X** : This is a time domain mean value for bodygyro  of a subject in an activity  
* **tBodyGyro.mean.Y** : This is a time domain mean value for bodygyro  of a subject in an activity  
* **tBodyGyro.mean.Z** : This is a time domain mean value for bodygyro  of a subject in an activity  
* **tBodyGyro.std.X** : This is a time domain std value for bodygyro  of a subject in an activity  
* **tBodyGyro.std.Y** : This is a time domain std value for bodygyro  of a subject in an activity  
* **tBodyGyro.std.Z** : This is a time domain std value for bodygyro  of a subject in an activity  
* **tBodyGyroJerk.mean.X** : This is a time domain mean value for bodygyro with jerk transformation  of a subject in an activity  
* **tBodyGyroJerk.mean.Y** : This is a time domain mean value for bodygyro with jerk transformation  of a subject in an activity  
* **tBodyGyroJerk.mean.Z** : This is a time domain mean value for bodygyro with jerk transformation  of a subject in an activity  
* **tBodyGyroJerk.std.X** : This is a time domain std value for bodygyro with jerk transformation  of a subject in an activity  
* **tBodyGyroJerk.std.Y** : This is a time domain std value for bodygyro with jerk transformation  of a subject in an activity  
* **tBodyGyroJerk.std.Z** : This is a time domain std value for bodygyro with jerk transformation  of a subject in an activity  
* **tBodyAccMag.mean** : This is a time domain mean value for bodyacc with Mag of a subject in an activity  
* **tBodyAccMag.std** : This is a time domain std value for bodyacc with Mag of a subject in an activity  
* **tGravityAccMag.mean** : This is a time domain mean value for gravityacc with Mag of a subject in an activity  
* **tGravityAccMag.std** : This is a time domain std value for gravityacc with Mag of a subject in an activity  
* **tBodyAccJerkMag.mean** : This is a time domain mean value for bodyacc with jerk&Mag transformation  of a subject in an activity  
* **tBodyAccJerkMag.std** : This is a time domain std value for bodyacc with jerk&Mag transformation  of a subject in an activity  
* **tBodyGyroMag.mean** : This is a time domain mean value for bodygyro with Mag of a subject in an activity  
* **tBodyGyroMag.std** : This is a time domain std value for bodygyro with Mag of a subject in an activity  
* **tBodyGyroJerkMag.mean** : This is a time domain mean value for bodygyro with jerk&Mag transformation  of a subject in an activity  
* **tBodyGyroJerkMag.std** : This is a time domain std value for bodygyro with jerk&Mag transformation  of a subject in an activity  
* **fBodyAcc.mean.X** : This is a frequency domain mean value for bodyacc  of a subject in an activity  
* **fBodyAcc.mean.Y** : This is a frequency domain mean value for bodyacc  of a subject in an activity  
* **fBodyAcc.mean.Z** : This is a frequency domain mean value for bodyacc  of a subject in an activity  
* **fBodyAcc.std.X** : This is a frequency domain std value for bodyacc  of a subject in an activity  
* **fBodyAcc.std.Y** : This is a frequency domain std value for bodyacc  of a subject in an activity  
* **fBodyAcc.std.Z** : This is a frequency domain std value for bodyacc  of a subject in an activity  
* **fBodyAcc.meanFreq.X** : This is a frequency domain weighted mean of the frequency components value for bodyacc  of a subject in an activity  
* **fBodyAcc.meanFreq.Y** : This is a frequency domain weighted mean of the frequency components value for bodyacc  of a subject in an activity  
* **fBodyAcc.meanFreq.Z** : This is a frequency domain weighted mean of the frequency components value for bodyacc  of a subject in an activity  
* **fBodyAccJerk.mean.X** : This is a frequency domain mean value for bodyacc with jerk transformation  of a subject in an activity  
* **fBodyAccJerk.mean.Y** : This is a frequency domain mean value for bodyacc with jerk transformation  of a subject in an activity  
* **fBodyAccJerk.mean.Z** : This is a frequency domain mean value for bodyacc with jerk transformation  of a subject in an activity  
* **fBodyAccJerk.std.X** : This is a frequency domain std value for bodyacc with jerk transformation  of a subject in an activity  
* **fBodyAccJerk.std.Y** : This is a frequency domain std value for bodyacc with jerk transformation  of a subject in an activity  
* **fBodyAccJerk.std.Z** : This is a frequency domain std value for bodyacc with jerk transformation  of a subject in an activity  
* **fBodyAccJerk.meanFreq.X** : This is a frequency domain weighted mean of the frequency components value for bodyacc with jerk transformation  of a subject in an activity  
* **fBodyAccJerk.meanFreq.Y** : This is a frequency domain weighted mean of the frequency components value for bodyacc with jerk transformation  of a subject in an activity  
* **fBodyAccJerk.meanFreq.Z** : This is a frequency domain weighted mean of the frequency components value for bodyacc with jerk transformation  of a subject in an activity  
* **fBodyGyro.mean.X** : This is a frequency domain mean value for bodygyro  of a subject in an activity  
* **fBodyGyro.mean.Y** : This is a frequency domain mean value for bodygyro  of a subject in an activity  
* **fBodyGyro.mean.Z** : This is a frequency domain mean value for bodygyro  of a subject in an activity  
* **fBodyGyro.std.X** : This is a frequency domain std value for bodygyro  of a subject in an activity  
* **fBodyGyro.std.Y** : This is a frequency domain std value for bodygyro  of a subject in an activity  
* **fBodyGyro.std.Z** : This is a frequency domain std value for bodygyro  of a subject in an activity  
* **fBodyGyro.meanFreq.X** : This is a frequency domain weighted mean of the frequency components value for bodygyro  of a subject in an activity  
* **fBodyGyro.meanFreq.Y** : This is a frequency domain weighted mean of the frequency components value for bodygyro  of a subject in an activity  
* **fBodyGyro.meanFreq.Z** : This is a frequency domain weighted mean of the frequency components value for bodygyro  of a subject in an activity  
* **fBodyAccMag.mean** : This is a frequency domain mean value for bodyacc with Mag of a subject in an activity  
* **fBodyAccMag.std** : This is a frequency domain std value for bodyacc with Mag of a subject in an activity  
* **fBodyAccMag.meanFreq** : This is a frequency domain weighted mean of the frequency components value for bodyacc with Mag of a subject in an activity  
* **fBodyBodyAccJerkMag.mean** : This is a frequency domain mean value for bodyacc with jerk&Mag transformation  of a subject in an activity  
* **fBodyBodyAccJerkMag.std** : This is a frequency domain std value for bodyacc with jerk&Mag transformation  of a subject in an activity  
* **fBodyBodyAccJerkMag.meanFreq** : This is a frequency domain weighted mean of the frequency components value for bodyacc with jerk&Mag transformation  of a subject in an activity  
* **fBodyBodyGyroMag.mean** : This is a frequency domain mean value for bodygyro with Mag of a subject in an activity  
* **fBodyBodyGyroMag.std** : This is a frequency domain std value for bodygyro with Mag of a subject in an activity  
* **fBodyBodyGyroMag.meanFreq** : This is a frequency domain weighted mean of the frequency components value for bodygyro with Mag of a subject in an activity  
* **fBodyBodyGyroJerkMag.mean** : This is a frequency domain mean value for bodygyro with jerk&Mag transformation  of a subject in an activity  
* **fBodyBodyGyroJerkMag.std** : This is a frequency domain std value for bodygyro with jerk&Mag transformation  of a subject in an activity  
* **fBodyBodyGyroJerkMag.meanFreq** : This is a frequency domain weighted mean of the frequency components value for bodygyro with jerk&Mag transformation  of a subject in an activity  

