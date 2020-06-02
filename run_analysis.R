#load libraries

library(dplyr)

# Download and Unzip DataSet

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "./data", method = "curl")
unzip("./data")

# Load Data

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Merge Train and Test Data

X <- rbind(X_train, X_test)
Y <- rbind(Y_train, Y_test)
subject <- rbind(subject_train, subject_test)

# Give column headers

names(X) <- features$V2
names(Y) <- "activity"
names(subject) <- "subject"
names(activities) <- c("code", "activity")




# Step One:-

# Merge all datasets

data <- cbind(subject, Y, X)

# Remove duplicate columns

data <- data[, !duplicated(names(data))]




# Step Two:-

# Select columns with mean and standard deviation measurement

mean_and_std_data <- select(data, subject, activity, contains("mean"), contains("std"))




# Step Three:-

# Give descriptive activity names to encoded actvity column in the dataset

sapply(data$activity, function(x){activities[x,2]})




# Step Four:-

# Give descriptive names to the variables

names(data) <- gsub("^t", "time", names(data))
names(data) <- gsub("^f", "frequency", names(data))
names(data) <- gsub("BodyBody", "Body", names(data))
names(data) <- gsub("Acc", "Accelerator", names(data))
names(data) <- gsub("Gyro", "Gyroscope", names(data))
names(data) <- gsub("Mag", "Magnitude", names(data))




# Step Five:-

# Create Tidy Dataset with average of each variable for each activity and each subject.

Tidy_data <- data %>% 
  group_by(subject, activity) %>%
  summarise_all(funs(mean))
write.table(Tidy_data, "Tidy_data.txt", row.names = FALSE)