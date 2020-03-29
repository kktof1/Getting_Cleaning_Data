library(dplyr)

## Read raw data files
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)

subject_test <- read.table(file = "./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
x_test <- read.table(file = "./UCI HAR Dataset/test/x_test.txt", header = FALSE)
y_test <- read.table(file = "./UCI HAR Dataset/test/y_test.txt", header = FALSE)

subject_train <- read.table(file = "./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
x_train <- read.table(file = "./UCI HAR Dataset/train/x_train.txt", header = FALSE)
y_train <- read.table(file = "./UCI HAR Dataset/train/y_train.txt", header = FALSE)



## 1. Merges the training and the test sets to create one data set.
one_data <- rbind(x_train, x_test)


## 2. Extracts only the measurements on the mean and standard deviation for each measurement.

# Extract 2nd column(feature name) from features (<- feature.txt)
feature_charactor <- as.character(features[,2])
# Names the one data with the feature names
names(one_data) <- c(feature_charactor)
# Extract columns whitch has "mean()" or "std()" on its name
extracted_data <- one_data[grep("mean()|std()",names(one_data))]


## 3. Uses descriptive activity names to name the activities in the data set

# Extract 2nd column(activity name) from activity_labelss (<- activity_labels.txt)
activity_label_charactor <- as.character(activity_labels[,2])
# Merge activity label of traning & test data
activity <- rbind(y_train, y_test)
# For all the activity, convert its index number to the charactor vector
j <- 1
for (i in activity[,1]) { 
        activity[j,1] <- activity_label_charactor[i]
        j <- j + 1
}
# Mege the activity to the extracted data
extracted_data_w_activity <- cbind(activity, extracted_data)


## 4. Appropriately labels the data set with descriptive variable names.

# Name first column as activity
names(extracted_data_w_activity)[1] <- c("activity")
# Exchange characters of "-" as ".", "()" as "" on the data names
names(extracted_data_w_activity) <- gsub("-", ".", names(extracted_data_w_activity))
names(extracted_data_w_activity) <- gsub("\\(\\)", "", names(extracted_data_w_activity))


## 5. From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.

# Merge subject of traning & test data
subject <- rbind(subject_train, subject_test)
# Mege the subject to the extracted data with activity
extracted_data_w_subject <- cbind(subject, extracted_data_w_activity)
# Name first column as subject
names(extracted_data_w_subject)[1] <- c("subject")
# Create tidy data
group_by_data <- group_by(extracted_data_w_subject, subject, activity)
tidy_data <- summarize_each(group_by_data, funs(mean))











# 
# ##==============================================
# 
# ## Merge test data and train data respectively
# test <- cbind(y_test, x_test)
# test <- cbind(subject_test, test)
# train <- cbind(y_train, x_train)
# train <- cbind(subject_train, train)
# 
# 
# ## 1. Merges the training and the test sets to create one data set.
# one_data <- rbind(train, test)
# 
# 
# ## 4. Appropriately labels the data set with descriptive variable names.
# # Extract 2nd column from features (<- feature.txt)
# feature_charactor <- as.character(features[,2])
# # Put "subject" and "activity" label for the first 2 place of the variable names
# names(one_data) <- c("subject", "activity", feature_charactor)
# 
# 
# ## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# extract_data <- one_data[grep("mean()|std()",names(one_data))]
# 
# 
# ## 3. Uses descriptive activity names to name the activities in the data set
# # Transform activity_labels to charactor vector
# activity_label_charactor <- as.character(activity_labels[,2])
# # Through all the activities, convert the activity index number to the charactor vector
# one_data_w_activities <- data.frame(one_data)
# for (i in one_data_w_activities$activity) { 
#         one_data_w_activities$activity[i] <- activity_label_charactor[i] 
# }
# 
# 
# ## 5. From the data set in step 4, creates a second, independent tidy data set 
# ## with the average of each variable for each activity and each subject.