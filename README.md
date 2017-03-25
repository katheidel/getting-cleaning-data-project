Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

This project involves one of the most exciting areas in all of data science right now: wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The script run_analysis.R does the following:

1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement.
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names.
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The output is contained in the file:  tidydata.txt

Steps: 

1) Download the data source from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  Put into a folder on your local drive. You'll now have a UCI HAR Dataset folder.
2) Put run_analysis.R in the parent folder of UCI HAR Dataset, then set it as your working directory using setwd() function.
3) Run the script run_analysis.R. It will generate a new file tidydata.txt in your working directory.

Dependencies:

Load the reshape2 library before running the script.  
