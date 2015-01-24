# Getting and Cleaning Data

## Course Project

This repo contains the information related with Project assignment of "Getting and Cleaning Data" course.

Please note: This Run_analysis script goes in the UCI HAR Dataset directory which also contains the train and test folders

Dataset can be retrieved from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## How to start:

Please, type 'source("run_analysis.R")' in your R console. 
Then, type 'run_analysis()' for start script.

## What R script does:

+ Reads files with data
+ Calculates list of MEAN and STD values from feature data
+ Replaces service symbols "()" and "-" in feature table
+ Assigns descriptive activity names to name the activities in the table
+ Merges all data in one object with subsetting MEAN and STD columns
+ Renames column names in merged file and adding SUBJECT and ACTIVITY columns.
  Also script sorts data in a file in ascending order.
+ Creates a second tidy data set with the average of each variable
  for each activity and each subject. 
+ Writing new tidy data set into file.
