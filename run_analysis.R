# run_analysis.R

# This script does the following:
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement.
# Uses descriptive activity names to name the activities in the data set.
# Appropriately labels the data set with descriptive variable names.
# Creates a tidy data set with the average of each variable for each activity and each subject.
# The output is contained in the file: tidydata.txt

# Read data files
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

# Add column names for measurement files
featureNames <- read.table("./UCI HAR Dataset/features.txt")
names(X_train) <- featureNames$V2
names(X_test) <- featureNames$V2

# Add column name for subject files
names(subject_train) <- "subjectID"
names(subject_test) <- "subjectID"

# Add column name for label files
names(y_train) <- "activity"
names(y_test) <- "activity"

# Add subjectID and activity columns to test and train data sets using cbind
train <- cbind(subject_train, y_train, X_train)
test <- cbind(subject_test, y_test, X_test)

# Combine test and train data sets using rbind
combined <- rbind(train, test)

# Find out which features include mean() or std()?
extract_features <- grepl("mean\\(\\)|std\\(\\)", featureNames$V2)

# Keep the first two columns: subjectID, activity
newextract <- c (TRUE,TRUE,extract_features)

# Create new data set with just the columns we want to keep
combined = combined[,newextract]

# Change activity codes to their descriptive labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
combined$activity <- factor(combined$activity, labels = activity_labels)

# Melt the data then create the tidy data set
melted <- melt(combined, id=c("subjectID","activity"))
tidy <- dcast(melted, subjectID+activity ~ variable, mean)

# Write the tidy data file
write.table(tidy, file = "./tidydata.txt",row.name=FALSE)
