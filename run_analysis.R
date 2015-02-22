install.packages("dplyr")
library(dplyr)

#This script assumes the relevant Samsung data is in the working directory
#Use setwd() to change the working directory if necessary

#Pull the column names
features <- read.table("UCI HAR Dataset/features.txt",sep = " ")

#Pull the first test set and rename the columns using the features table
widths <- rep(16, times=561)
x_test <- read.fwf("UCI HAR Dataset/test/X_test.txt",widths)
colnames(x_test) <- features[,2]

#Pull the test subjects and activities columns
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

#Append type column to the x test set
test <- rep("test",times=nrow(x_test))

#Combine the type, activity, and subject columns
x_test <- cbind(test, y_test, subject_test,x_test)
colnames(x_test)[1:3] <- c("type","activityValue","subject")

#Pull the x train data and rename the columns using the features table.
x_train <- read.fwf("UCI HAR Dataset/train/X_train.txt",widths)
colnames(x_train) <- features[,2]

#Pull the train subjects and activities columns
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")

#Define the train data as type train
train <- rep("train",times=nrow(x_train))

#Combine the type, activity, and subject columns
x_train <- cbind(train, y_train, subject_train,x_train)
colnames(x_train)[1:3] <- c("type","activityValue","subject")

#Combine the train and test data
set <- rbind(x_train,x_test)

#Identify which columns are means and standard deviations and add 3 because of added type, activity, and subject columns.
vector <- c(1,2,3)
for (i in 1:nrow(features)) {
  if ((grepl('mean',features[i,2]) | grepl('std',features[i,2])) & !grepl('meanFreq',features[i,2])) {
    vector <- c(vector,i + 3)
  }
}

#Pull only the columns that are means and standard deviations
set <- set[,vector]

#Create activities lookup data frame
activities <- read.table("UCI HAR Dataset/activity_labels.txt",sep = " ")
colnames(activities) <- c('value','activity')

#Rename activities with activity labels
set <- merge(set,activities,by.x='activityValue',by.y='value')
set <- subset(set, select = -activityValue)

#Grouping data by subject and activity, and then summarising columns and removing type as it is no longer relevant.
secondSet <- tbl_df(set) %>%
  group_by(subject,activity) %>%
  summarise_each(funs(mean),-type)

#Write this secondSet to a file
write.table(secondSet, file = "cleanSummarizedData.txt", row.names=FALSE)