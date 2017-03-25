This code book describes the data used in the course project and the steps that were used to create the tidy data file.  

Overview:
The experiments were carried out with a group of 30 volunteers. Each person performed six activities wearing a smartphone on the waist. 

The data set is here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The website describing the project is here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Files used:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'test/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

Note:  the files in the Inerital Signals folders within both the train and test folders were not used.  

Processing Steps:
1) Read the data files
2) Add descriptive column labels for the measurement files, subject files, and activity files
3) Combine by columns ("cbind") to add subjectID and activity columns to the test and training data sets
4) Combine by rows ("rbind") to combine the test and trining data sets
5) Find the columns that include the text strings "mean()" or "std()" - 66 features
6) Create a new data set with just the pertinent columns from step (5)
7) Create the tidy data set using the melt and dcast commands
8) Write the tidy data file

Output:  
The output is a tidy data set containing the mean of each feature for each subject and each activity. For example, subject 1 has 6 rows in the tidy data set (one row for each activity), and each row contains the mean value for each of the 66 features for that subject/activity combination. Since there are 30 subjects with 6 activities each, there are a total of 180 rows. The tidy data file is "tidydata.txt", written to the root directory.  

