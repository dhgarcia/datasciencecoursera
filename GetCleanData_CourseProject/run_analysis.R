#setwd("D:/Documents/Coursera/GetCleanData_CourseProject")

# folder where th data is expected
folder = "UCI HAR Dataset"

# if the folder doesn't exist get the data
if (!file.exists(folder)) {
    
    # url of the data
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    
    # .zip file with the data. If the .zip file doesn't exist downlod the data
    FILE = "Dataset.zip"
    if (!file.exists(FILE)) 
        #download.file(url,FILE)
        download.file(url,FILE, method='curl')
    
    # unzip the .zip file
    unzip(FILE, overwrite=TRUE)
}

#file with the activity labels names
activities = "activity_labels.txt"
fpath = file.path(folder, activities)
activities <- read.table(fpath, header = FALSE)

#file with the feature variable names
features = "features.txt"
fpath = file.path(folder, features)
features <- read.table(fpath, header = FALSE)

#read the test dataset
test_s = "test/subject_test.txt"
fpath = file.path(folder, test_s)
test_s <- read.table(fpath, header = FALSE)
test_x = "test/X_test.txt"
fpath = file.path(folder, test_x)
test_x <- read.table(fpath, header = FALSE)
test_y = "test/y_test.txt"
fpath = file.path(folder, test_y)
test_y <- read.table(fpath, header = FALSE)

test <- cbind(test_s, test_y, test_x)

#read the train dataset
train_s = "train/subject_train.txt"
fpath = file.path(folder, train_s)
train_s <- read.table(fpath, header = FALSE)
train_x = "train/X_train.txt"
fpath = file.path(folder, train_x)
train_x <- read.table(fpath, header = FALSE)
train_y = "train/y_train.txt"
fpath = file.path(folder, train_y)
train_y <- read.table(fpath, header = FALSE)

train <- cbind(train_s, train_y, train_x)

## 1
#create the data1 dataset merging the training and the test sets
data1 <- rbind(test, train)

## 2
#data1 dataset extracing the measurements on the mean and standard deviation for each measurement
names(data1) <- c("Subject","Activity",as.character(features$V2))
data1 <- data1[,c(1,2,grep("mean\\(\\)|std\\(\\)", names(data1)))]

## 3 Use descriptive activity names to name the activities in the dataset
m <- match(data1$Activity, activities$V1)
data1$Activity <- activities[m,2]

## 4 Appropriately label the dataset with descriptive variable names
names(data1) <- gsub("-","_",names(data1))
names(data1) <- gsub("\\()","",names(data1))
names(data1) <- gsub("BodyBody","Body",names(data1)) #the doble "Body" is a typo from the original dataset
#I refuse to change t and f prefixes since they are suficciently descriptive for Time and Frequency to any reasonable person
#names(data1) <- gsub("^t","Time",names(data1))
#names(data1) <- gsub("^f","Freq",names(data1))

## 5
#creates the data2 dataset with the average of each variable for each activity and each subject
data2 <-aggregate(data1[3:68], by=list(data1$Subject,data1$Activity), FUN=mean, na.rm=TRUE, simplify=TRUE)
names(data2)[1:2] <- c("Subject", "Activity")



##
# output tidy data set
write.table(data1, file = "Dataset1.txt", quote = FALSE, row.names = FALSE, sep = ";")
write.table(data2, file = "Dataset2.txt", quote = FALSE, row.names = FALSE, sep = ";")

## check
#read with
d <- read.table("Dataset1.txt", header = TRUE, sep = ";")
td <- read.table("Dataset2.txt", header = TRUE, sep = ";")