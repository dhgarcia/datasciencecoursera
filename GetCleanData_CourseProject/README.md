GetCleanData_CourseProject
==========================

Getting and Cleaning Data Course Project

An R script called `run_analysis.R` is provided with this `README.md` file which perform the analysis. The code book describing the variables and the cleaned up data is given in `CodeBook.md`. 
The created datasets can be found in `Dataset1.txt` containing the merged training and the test sets and `Dataset2.txt` containing the tidy data set with the average of each variable for each activity and each subject. 



Perform the analysis
-----------------------

To perform the analysis run `run_analysis.R`

* First, load the data for the project, if it is not present it will download it from ["https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"]("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip") and unzip into the working directory where the file `run_analysis.R` is being executed. All files are extracted into a directory called "UCI HAR Dataset"

* Second, read from <i> "UCI HAR Dataset/activity_labels.txt" </i> and <i>"UCI HAR Dataset/features.txt"</i> the names for the activities and the features variables in the given dataset. 

* Third, create a test dataset reading the data in <i> "UCI HAR Dataset/test/subject_test.txt" </i>, <i> "UCI HAR Dataset/test/X_test.txt" </i>, and <i> "UCI HAR Dataset/test/y_test.txt" </i> and cbinding them together to form the test dataset. 

* Fourth, create a train dataset reading the data in <i> "UCI HAR Dataset/train/subject_train.txt" </i>, <i> "UCI HAR Dataset/train/X_train.txt" </i>, and <i> "UCI HAR Dataset/test/y_train.txt" </i> and cbinding them together to form the train dataset.

* Fifth, merges the training and the test sets to create the data1 set. Rename the variables with the names given in the "features.txt" file.

* Sixth, extracts the measurements corresponding to the mean and standard deviation for each measurement searching for only the variables with mean() or std() in their names. 

* Seventh, modifed the activities numeric values with the link class activity names given in the "activity_labels.txt" file.

* Eighth, change the labels in the data set with descriptive variable names, as provided in the "features.txt" file replacing illegal characters for processing with <b>R</b>.  

* Ninth, creates a data2 set, with the average of each variable for each activity and each subject. 

* Tenth, write the `data1` and `data2` sets to "Dataset1.txt" and "Dataset2.txt" files respectevily with write.table(). To read the output datasets you can use `read.table("Dataset1.txt", header = TRUE, sep = ";")` and `read.table("Dataset2.txt", header = TRUE, sep = ";")` respectevely.


