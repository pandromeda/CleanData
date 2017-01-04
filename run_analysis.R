## This script cleans up "human activity recognition using smartphones" data set 
## for the Getting and Cleaning Data Course Project.
## The data description is as follows:
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Working directory is pre-set to folder "UCI HAR Dataset" in the downloaded data
## 5 sections below corresponds to the 5 steps required in the course project: 

## 1. Merges the training and the test sets to create one data set.

## Load data
trainData <- read.table("./train/X_train.txt")
trainLabel <- read.table("./train/y_train.txt")
trainSubject <- read.table("./train/subject_train.txt")

testData <- read.table("./test/X_test.txt")
testLabel <- read.table("./test/y_test.txt")
testSubject <- read.table("./test/subject_test.txt")

## Combine all data to 1 set
trainAll <- cbind(trainSubject,trainLabel,trainData)
testAll <- cbind(testSubject,testLabel,testData)
allData <- rbind(trainAll,testAll)

# Name all the columns
feature <- read.table("./features.txt",colClasses = c("numeric","character"),strip.white = TRUE)
names(allData)[c(3:ncol(allData))]<-feature$V2
names(allData)[c(1,2)]<-c("subject","label")


## 2. Extracts only the measurements on the mean and standard deviation for 
##   each measurement.

## Since columns are named in previous step, only need to extract column with
## name including "mean" or "std"

dataMeanStd <- allData[,c(1,2,grep("mean\\(\\)|std\\(\\)",colnames(allData)))]


## 3. Uses descriptive activity names to name the activities in the data set

## Load activity labels
activityLabel <- read.table("./activity_labels.txt",colClasses = c("numeric","character"),strip.white = TRUE)

## Map activity ID in data with label
dataMeanStd$label<-activityLabel[dataMeanStd$label,2]


## 4. Appropriately labels the data set with descriptive variable names.

## Convert all column names to lower case;
## Remove characters that are not letters;
## Clean up redundant letters to unify column names (for variables applied Fast Fourier Transform, some says "fbody" and some says "fbodybody")
colnames(dataMeanStd)<-gsub("bodybody","body",gsub("[^[:alpha:]]", "", tolower(colnames(dataMeanStd))))


## 5. From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.

## Aggregate with mean method
outData<-aggregate(dataMeanStd[,c(3:ncol(dataMeanStd))],by=list(subject=dataMeanStd$subject,label=dataMeanStd$label),mean)

## Output data into .txt file
write.table(outData,file="cleaned.txt",row.name=FALSE,quote=FALSE)