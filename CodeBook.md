Codebook for Cleaned Data
================================================

This file describes the cleaned up data, and transformations or performed to clean up the data in "human activity recognition using smartphones" data set.

## Original data:

Raw data is at: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Raw data description: With 3-axial linear acceleration and 3-axial angular velocity data collected from 30 subjects with smartphone when performing each of 6 types of activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING), features are built for 3-dimentional body/gravity acceleration signals and jerk signals, also the magnitude of these signals are calculated and a Fast Fourier Transform was applied to some signals to build more features. The statistical variables are calculated for each feature such as mean, standard deviation, median absolute deviation, etc.

For More detailes please refer to the link 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


## Data description for cleaned up data

The cleaned up data file "cleaned.txt" shows, for each of the 30 subject and each type of the 6 activity, the mean for mean and standard deviation of following features ('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions): 

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

##  Transformations performed to clean up the data

* Original data set has seperate files for training/test set, also files are separate for data, subject and activity label. All these are merged to the same file

* Original data set contains many statistical variables for each feature, only mean and standard deviation are extracted in the cleaned up data

* Descriptive names for variables and label name for activities are also set refering to feature/activity name files.

* Non-alphabetical letters such as "-" and "()" in original names are trimmed and letters are converted to lowercases.
  
* In original dataset, seperate observation present for each time of taking the data, in cleaned up data, average of each variable for each activity and each subject are aggregated

## Variable description

The cleaned up dataset contains 180 observations (30 subject x 6 activities) of 68 variables. 
````

Description for variable names:
-x: signal in x direction
-y: signal in y direction
-z: signal in z direction
-mean-: mean
-std-: standard deviation 
tbodyacc-: body acceleration signals seperated from accelaration signals
tgravityacc-: gravity acceleration signals seperated from accelaration signals
tbodygyro-: body angular velocity
-jerk-: (body acceleration or angula velocity) signal derived in time resultes in jerk signal
-mag: magnitude signals calculated using the Euclidean norm
f-: frequency domain signals calculated by appling Fast Fourier Transform

Format of variable explanation below:
variable name
    data type
    description 
    allowed value range
    
-----------------------------
subject
    numeric
    subject ID
    integer of 1 - 30

label
    character
    activity name
    "WALKING" "WALKING_UPSTAIRS" "WALKING_DOWNSTAIRS" "SITTING" "STANDING" "LAYING"

tbodyaccmeanx
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodyaccmeany
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodyaccmeanz
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodyaccstdx
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodyaccstdy
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodyaccstdz
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tgravityaccmeanx
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tgravityaccmeany
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tgravityaccmeanz
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tgravityaccstdx
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tgravityaccstdy
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tgravityaccstdz
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodyaccjerkmeanx
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodyaccjerkmeany
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodyaccjerkmeanz
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodyaccjerkstdx
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodyaccjerkstdy
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodyaccjerkstdz
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodygyromeanx
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodygyromeany
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodygyromeanz
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodygyrostdx
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodygyrostdy
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodygyrostdz
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodygyrojerkmeanx
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodygyrojerkmeany
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodygyrojerkmeanz
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodygyrojerkstdx
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodygyrojerkstdy
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodygyrojerkstdz
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodyaccmagmean
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodyaccmagstd
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tgravityaccmagmean
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tgravityaccmagstd
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodyaccjerkmagmean
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodyaccjerkmagstd
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodygyromagmean
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodygyromagstd
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodygyrojerkmagmean
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
tbodygyrojerkmagstd
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodyaccmeanx
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodyaccmeany
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodyaccmeanz
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodyaccstdx
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodyaccstdy
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodyaccstdz
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodyaccjerkmeanx
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodyaccjerkmeany
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodyaccjerkmeanz
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodyaccjerkstdx
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodyaccjerkstdy
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodyaccjerkstdz
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodygyromeanx
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodygyromeany
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodygyromeanz
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodygyrostdx
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodygyrostdy
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodygyrostdz
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodyaccmagmean
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodyaccmagstd
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodyaccjerkmagmean
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodyaccjerkmagstd
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodygyromagmean
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodygyromagstd
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodygyrojerkmagmean
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    
fbodygyrojerkmagstd
    numeric
    (as described in above "Description for variable names")
    [-1,1]
    

  
````

