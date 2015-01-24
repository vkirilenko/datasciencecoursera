# Getting and Cleaning Data

## Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

## Attribute Information:

For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment. 

## Feature data:

+ **"Code"**: unique identifier of the activities of each research subject

+ **"Subject"**: code number of each subject (30 unique subjects)

Average calculations of sensors data on various movements and their deviations:
+ **"tBodyAcc_mean__X"** - Average of tBodyAcc mean value at X-axis
+ **"tBodyAcc_mean__Y"** - Average of tBodyAcc mean value at Y-axis
+ **"tBodyAcc_mean__Z"** - Average of tBodyAcc mean value at Z-axis
+ **"tBodyAcc_std__X"** - Average of tBodyAcc standard deviation at X-axis
+ **"tBodyAcc_std__Y""** - Average of tBodyAcc standard deviation at Y-axis
+ **"tBodyAcc_std__Z** - Average of tBodyAcc standard deviation at Z-axis
+ **"tGravityAcc_mean__X"** - Average of tGravityAcc mean value at X-axis
+ **"tGravityAcc_mean__Y"** - Average of tGravityAcc mean value at Y-axis
+ **"tGravityAcc_mean__Z"** - Average of tGravityAcc mean value at Z-axis
+ **"tGravityAcc_std__X"** - Average of tGravityAcc standard deviation at X-axis
+ **"tGravityAcc_std__Y"** - Average of tGravityAcc standard deviation at Y-axis
+ **"tGravityAcc_std__Z"** - Average of tGravityAcc standard deviation at Z-axis
+ **"tBodyAccJerk_mean__X"** - Average of tBodyAccJerk mean value at X-axis
+ **"tBodyAccJerk_mean__Y"** - Average of tBodyAccJerk mean value at Y-axis
+ **"tBodyAccJerk_mean__Z"** - Average of tBodyAccJerk mean value at Z-axis
+ **"tBodyAccJerk_std__X"** - Average of tBodyAccJerk standard deviation at X-axis
+ **"tBodyAccJerk_std__Y"** - Average of tBodyAccJerk standard deviation at Y-axis
+ **"tBodyAccJerk_std__Z"** - Average of tBodyAccJerk standard deviation at Z-axis
+ **"tBodyGyro_mean__X"** - Average of tBodyGyro mean value at X-axis
+ **"tBodyGyro_mean__Y"** - Average of tBodyGyro mean value at Y-axis
+ **"tBodyGyro_mean__Z"** - Average of tBodyGyro mean value at Z-axis
+ **"tBodyGyro_std__X"** - Average of tBodyGyro standard deviation at X-axis
+ **"tBodyGyro_std__Y"** - Average of tBodyGyro standard deviation at Y-axis
+ **"tBodyGyro_std__Z"** - Average of tBodyGyro standard deviation at Z-axis
+ **"tBodyGyroJerk_mean__X"** - Average of tBodyGyroJerk mean value at X-axis
+ **"tBodyGyroJerk_mean__Y"** - Average of tBodyGyroJerk mean value at Y-axis
+ **"tBodyGyroJerk_mean__Z"** - Average of tBodyGyroJerk mean value at Z-axis
+ **"tBodyGyroJerk_std__X"** - Average of tBodyGyroJerk standard deviation at X-axis
+ **"tBodyGyroJerk_std__Y"** - Average of tBodyGyroJerk standard deviation at Y-axis
+ **"tBodyGyroJerk_std__Z"** - Average of tBodyGyroJerk standard deviation at Z-axis
+ **"tBodyAccMag_mean_"** - Average of tBodyAccMag mean value
+ **"tBodyAccMag_std_"** - Average of tBodyAccMag standard deviation
+ **"tGravityAccMag_mean_"** - Average of tGravityAccMag mean value
+ **"tGravityAccMag_std_"** - Average of tGravityAccMag standard deviation
+ **"tBodyAccJerkMag_mean_"** - Average of tBodyAccJerkMag mean value
+ **"tBodyAccJerkMag_std_"** - Average of tBodyAccJerkMag standard deviation
+ **"tBodyGyroMag_mean_"** - Average of tBodyGyroMag mean value
+ **"tBodyGyroMag_std_"** - Average of tBodyGyroMag standard deviation
+ **"tBodyGyroJerkMag_mean_"** - Average of tBodyGyroJerkMag mean value
+ **"tBodyGyroJerkMag_std_"** - Average of tBodyGyroJerkMag standard deviation
+ **"fBodyAcc_mean__X"** - Average of fBodyAcc mean value at X-axis
+ **"fBodyAcc_mean__Y"** - Average of fBodyAcc mean value at Y-axis
+ **"fBodyAcc_mean__Z"** - Average of fBodyAcc mean value at Z-axis
+ **"fBodyAcc_std__X"** - Average of fBodyAcc standard deviation at X-axis
+ **"fBodyAcc_std__Y"** - Average of fBodyAcc standard deviation at Y-axis
+ **"fBodyAcc_std__Z"** - Average of fBodyAcc standard deviation at Z-axis
+ **"fBodyAcc_meanFreq__X"** - Average of fBodyAcc mean frequency at X-axis
+ **"fBodyAcc_meanFreq__Y"** - Average of fBodyAcc mean frequency at Y-axis
+ **"fBodyAcc_meanFreq__Z"** - Average of fBodyAcc mean frequency at Z-axis
+ **"fBodyAccJerk_mean__X"** - Average of fBodyAccJerk mean value at X-axis
+ **"fBodyAccJerk_mean__Y"** - Average of fBodyAccJerk mean value at Y-axis
+ **"fBodyAccJerk_mean__Z"** - Average of fBodyAccJerk mean value at Z-axis
+ **"fBodyAccJerk_std__X"** - Average of fBodyAccJerk standard deviation at X-axis
+ **"fBodyAccJerk_std__Y"** - Average of fBodyAccJerk standard deviation at Y-axis
+ **"fBodyAccJerk_std__Z"** - Average of fBodyAccJerk standard deviation at Z-axis
+ **"fBodyAccJerk_meanFreq__X"** - Average of fBodyAccJerk mean frequency at X-axis
+ **"fBodyAccJerk_meanFreq__Y"** - Average of fBodyAccJerk mean frequency at Y-axis
+ **"fBodyAccJerk_meanFreq__Z"** - Average of fBodyAccJerk mean frequency at Z-axis
+ **"fBodyGyro_mean__X"** - Average of fBodyGyro mean value at X-axis
+ **"fBodyGyro_mean__Y"** - Average of fBodyGyro mean value at Y-axis
+ **"fBodyGyro_mean__Z"** - Average of fBodyGyro mean value at Z-axis
+ **"fBodyGyro_std__X"** - Average of fBodyGyro standard deviation at X-axis
+ **"fBodyGyro_std__Y"** - Average of fBodyGyro standard deviation at Y-axis
+ **"fBodyGyro_std__Z"** - Average of fBodyGyro standard deviation at Z-axis
+ **"fBodyGyro_meanFreq__X"** - Average of fBodyGyro mean frequency at X-axis
+ **"fBodyGyro_meanFreq__Y"** - Average of fBodyGyro mean frequency at Y-axis
+ **"fBodyGyro_meanFreq__Z"** - Average of fBodyGyro mean frequency at Z-axis
+ **"fBodyAccMag_mean_"** - Average of fBodyAccMag mean value
+ **"fBodyAccMag_std_"** - Average of fBodyAccMag standard deviation
+ **"fBodyAccMag_meanFreq_"** - Average of fBodyAccMag mean frequency
+ **"fBodyBodyAccJerkMag_mean_"** - Average of fBodyBodyAccJerkMag mean value
+ **"fBodyBodyAccJerkMag_std_"** - Average of fBodyBodyAccJerkMag standard deviation
+ **"fBodyBodyAccJerkMag_meanFreq_"** - Average of fBodyBodyAccJerkMag mean frequency
+ **"fBodyBodyGyroMag_mean_"** - Average of fBodyBodyGyroMag mean value
+ **"fBodyBodyGyroMag_std_"** - Average of fBodyBodyGyroMag standard deviation
+ **"fBodyBodyGyroMag_meanFreq_"** - Average of fBodyBodyGyroMag mean frequency
+ **"fBodyBodyGyroJerkMag_mean_"** - Average of fBodyBodyGyroJerkMag mean value
+ **"fBodyBodyGyroJerkMag_std_"** - Average of fBodyBodyGyroJerkMag standard deviation
+ **"fBodyBodyGyroJerkMag_meanFreq_"** - Average of fBodyBodyGyroJerkMag mean frequency
+ **"angle_tBodyAccmean.gravity_"** - Average of angle of tBodyAcc mean value between to gravity vector
+ **"angle_tBodyAccJerkmean_.gravitymean_"** - Average of angle of tBodyAccJerk mean value between to gravity vector
+ **"angle_tBodyGyromean.gravitymean_"** - Average of angle of tBodyGyro mean value between to gravity vector
+ **"angle_tBodyGyroJerkmean.gravitymean_"** - Average of angle of tBodyGyroJerk mean value between to gravity vector
+ **"angle_X.gravitymean_"** - Average of angle between to vectors at X-axis
+ **"angle_Y.gravitymean_"** - Average of angle between to vectors at Y-axis
+ **"angle_Z.gravitymean_"** - Average of angle between to vectors at Z-axis

All data are normalized. Some unused data are removed.
All feature names are listed according to their numbering on the columns.


+ **"Activity"**: description of types of activities (6 types)
Types: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING



## Source:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy.
activityrecognition '@' smartlab.ws
www.smartlab.ws 

