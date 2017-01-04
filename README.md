Getting and Cleaning Data Course Project
================================================

This project is to cleans up "human activity recognition using smartphones" data set.

## Original data:

Raw data is at: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Raw data description is at: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Files included in the repo

* README.md: This file. Explains how all of the scripts work and how they are connected

* CodeBook.md: Describes the variables, the data, and any transformations or work performed to clean up the data

* run_analysis.R: R Script file that cleans up the data

## Explanation of R script file: run_analysis.R

Working directory is pre-set to folder "UCI HAR Dataset" in the above downloaded data. The script cleans up the data in following steps:

* Step 1. Merges the training and the test sets to create one data set
    * Load all data/subject/label for both training/test data
    * Combine all data to 1 set
    * Name columns using feature data (this can be done at this step or later, I just find it more clear to name all the columns upfront)  

* Step 2. Extracts only the measurements on the mean and standard deviation for each measurement
    * Extract columns with name including "mean()" or "std()"
      (Please be aware that, columns like Angle- or -meanfreq should not be included, as project request the mean and std of the measurements! A further understanding of the file feature_info.txt would clarify that)
      

* Step 3. Uses descriptive activity names to name the activities in the data set
    * Load activity labels
    * Map activity ID in data with activity label  
    
  
* Step 4. Appropriately labels the data set with descriptive variable names
    * Convert all column names to lower case
    * Remove characters that are not letters
    * Replace redundant "bodybody" with "body" in variable names to keep all the variable names rule consistent (for variables applied Fast Fourier Transform, some says "fbody" and some says "fbodybody") 
    

* Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
    * Aggregate with mean method
    * Write the data into a .txt file

