CODEBOOK
==========================

CodeBook for the Getting and Cleaning Data Course Project

The variable names where extracted from the "features.txt" file provided in the original dataset which can be downloaded from: 

["https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"]("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")

There are 180 observations of 68 variables in the dataset. Each observation correspond to a grouping of Subject and Activity. The variables from 3 to 68 correspond to the average of each variable for each activity and each subject.

The first variable correspond to the subjects id who performed the activity. The second variable correspond to the activties.
The remaining variables correspond to the accelerometer and gyroscope 3-axial raw signals from the original dataset (for reference see "features_info.txt"). The variables follow the format \[domain\]\[name\]\[fun\]\[direction\].
The \[domain\] can be 't' to denote time or 'f' to indicate frequency domain. 
The \[fun\] can be either the 'mean' or the 'std'.
Some variables have \[direction\] used to denote 3-axial signals in the X, Y and Z directions.

The original variable names where modified to replace illegal characters for processing with <b>R</b>. The dash were replaced with underscores as `gsub("-","_",names(data1))`. The parenthesis where removed as `gsub("\\()","",names(data1))`.

* "Subject" integer

    Subject who performed the activity for each window sample. Its range is from 1 to 30.

* "Activity"  factor

    Links the class labels with their activity name, as taken from 'activity_labels.txt' in the original data.
    1 WALKING
    2 WALKING_UPSTAIRS
    3 WALKING_DOWNSTAIRS
    4 SITTING
    5 STANDING
    6 LAYING

* "tBodyAcc_mean_X"   numeric

    Time Body Accelerometer Mean X direction.
    Normalized and bounded within [-1,1].

* "tBodyAcc_mean_Y"   numeric

    Time Body Accelerometer Mean Y direction.
    Normalized and bounded within [-1,1].

* "tBodyAcc_mean_Z"   numeric

    Time Body Accelerometer Mean Z direction.
    Normalized and bounded within [-1,1].

* "tBodyAcc_std_X"    numeric

    Time Body Accelerometer Standard Deviation X direction.
    Normalized and bounded within [-1,1].

* "tBodyAcc_std_Y"    numeric

    Time Body Accelerometer Standard Deviation Y direction.
    Normalized and bounded within [-1,1].

* "tBodyAcc_std_Z"    numeric

    Time Body Accelerometer Standard Deviation Z direction.
    Normalized and bounded within [-1,1].

* "tGravityAcc_mean_X"    numeric

    Time Gravity Accelerometer Mean X direction.
    Normalized and bounded within [-1,1].
    
* "tGravityAcc_mean_Y"    numeric

    Time Gravity Accelerometer Mean Y direction.
    Normalized and bounded within [-1,1].
    
* "tGravityAcc_mean_Z"    numeric

    Time Gravity Accelerometer Mean Z direction.
    Normalized and bounded within [-1,1].

* "tGravityAcc_std_X"    numeric

    Time Gravity Accelerometer Standard Deviation X direction.
    Normalized and bounded within [-1,1].
    
* "tGravityAcc_std_Y"    numeric

    Time Gravity Accelerometer Standard Deviation Y direction.
    Normalized and bounded within [-1,1].
    
* "tGravityAcc_std_Z"    numeric

    Time Gravity Accelerometer Standard Deviation Z direction.
    Normalized and bounded within [-1,1].
    
* "tBodyAccJerk_mean_X"    numeric

    Time Body Accelerometer Jerk Mean X direction.
    Normalized and bounded within [-1,1].
    
* "tBodyAccJerk_mean_Y"    numeric

    Time Body Accelerometer Jerk Mean Y direction.
    Normalized and bounded within [-1,1].
    
* "tBodyAccJerk_mean_Z"    numeric

    Time Body Accelerometer Jerk Mean Z direction.
    Normalized and bounded within [-1,1].
    
* "tBodyAccJerk_std_X"    numeric

    Time Body Accelerometer Jerk Standard Deviation X direction.
    Normalized and bounded within [-1,1].
    
* "tBodyAccJerk_std_Y"    numeric

    Time Body Accelerometer Jerk Standard Deviation Y direction.
    Normalized and bounded within [-1,1].
    
* "tBodyAccJerk_std_Z"    numeric

    Time Body Accelerometer Jerk Standard Deviation Z direction.
    Normalized and bounded within [-1,1].
    
* "tBodyGyro_mean_X"    numeric

    Time Body Gyroscope Mean X direction.
    Normalized and bounded within [-1,1].
    
* "tBodyGyro_mean_Y"    numeric

    Time Body Gyroscope Mean Y direction.
    Normalized and bounded within [-1,1].
    
* "tBodyGyro_mean_Z"    numeric

    Time Body Gyroscope Mean Z direction.
    Normalized and bounded within [-1,1].
    
* "tBodyGyro_std_X"    numeric

    Time Body Gyroscope Standard Deviation X direction.
    Normalized and bounded within [-1,1].
        
* "tBodyGyro_std_Y"    numeric

    Time Body Gyroscope Standard Deviation Y direction.
    Normalized and bounded within [-1,1].
    
* "tBodyGyro_std_Z"    numeric

    Time Body Gyroscope Standard Deviation Z direction.
    Normalized and bounded within [-1,1].
    
* "tBodyGyroJerk_mean_X"    numeric

    Time Body Gyroscope Jerk Mean X direction.
    Normalized and bounded within [-1,1].
    
* "tBodyGyroJerk_mean_Y"    numeric

    Time Body Gyroscope Jerk Mean Y direction.
    Normalized and bounded within [-1,1].
    
* "tBodyGyroJerk_mean_Z"    numeric

    Time Body Gyroscope Jerk Mean Z direction.
    Normalized and bounded within [-1,1].
    
* "tBodyGyroJerk_std_X"    numeric

    Time Body Gyroscope Jerk Standard Deviation X direction.
    Normalized and bounded within [-1,1].
    
* "tBodyGyroJerk_std_Y"    numeric

    Time Body Gyroscope Jerk Standard Deviation Y direction.
    Normalized and bounded within [-1,1].
    
* "tBodyGyroJerk_std_Z"    numeric

    Time Body Gyroscope Jerk Standard Deviation Z direction.
    Normalized and bounded within [-1,1].
    
* "tBodyAccMag_mean"   numeric

    Time Body Accelerometer Magnitude Mean.
    Normalized and bounded within [-1,1].
        
* "tBodyAccMag_std"   numeric

    Time Body Accelerometer Magnitude Standard Deviation.
    Normalized and bounded within [-1,1].
    
* "tGravityAccMag_mean"   numeric

    Time Gravity Accelerometer Magnitude Mean.
    Normalized and bounded within [-1,1].
    
* "tGravityAccMag_std"   numeric

    Time Gravity Accelerometer Magnitude Standard Deviation.
    Normalized and bounded within [-1,1].
    
* "tBodyAccJerkMag_mean"   numeric

    Time Body Accelerometer Jerk Magnitude Mean.
    Normalized and bounded within [-1,1].
    
* "tBodyAccJerkMag_std"   numeric

    Time Body Accelerometer Jerk Magnitude Standard Deviation.
    Normalized and bounded within [-1,1].
    
* "tBodyGyroMag_mean"   numeric

    Time Body Gyroscope Magnitude Mean.
    Normalized and bounded within [-1,1].

* "tBodyGyroMag_std"   numeric

    Time Body Gyroscope Magnitude Standard Deviation.
    Normalized and bounded within [-1,1].
    
* "tBodyGyroJerkMag_mean"   numeric

    Time Body Gyroscope Jerk Magnitude Mean.
    Normalized and bounded within [-1,1].
    
* "tBodyGyroJerkMag_std"   numeric

    Time Body Gyroscope Jerk Magnitude Standard Deviation.
    Normalized and bounded within [-1,1].
    
* "fBodyAcc_mean_X"    numeric

    Fast Fourier Transform Body Accelerometer Mean X direction.
    Normalized and bounded within [-1,1].

* "fBodyAcc_mean_Y"    numeric

    Fast Fourier Transform Body Accelerometer Mean Y direction.
    Normalized and bounded within [-1,1].
    
* "fBodyAcc_mean_Z"    numeric

    Fast Fourier Transform Body Accelerometer Mean Z direction.
    Normalized and bounded within [-1,1].

* "fBodyAcc_std_X"    numeric

    Fast Fourier Transform Body Accelerometer Standard Deviation X direction.
    Normalized and bounded within [-1,1].
    
* "fBodyAcc_std_Y"    numeric

    Fast Fourier Transform Body Accelerometer Standard Deviation Y direction.
    Normalized and bounded within [-1,1].
    
* "fBodyAcc_std_Z"    numeric

    Fast Fourier Transform Body Accelerometer Standard Deviation Z direction.
    Normalized and bounded within [-1,1].

* "fBodyAccJerk_mean_X"    numeric

    Fast Fourier Transform Body Accelerometer Jerk Mean X direction.
    Normalized and bounded within [-1,1].

* "fBodyAccJerk_mean_Y"    numeric

    Fast Fourier Transform Body Accelerometer Jerk Mean Y direction.
    Normalized and bounded within [-1,1].

* "fBodyAccJerk_mean_Z"    numeric

    Fast Fourier Transform Body Accelerometer Jerk Mean Z direction.
    Normalized and bounded within [-1,1].

* "fBodyAccJerk_std_X"    numeric

    Fast Fourier Transform Body Accelerometer Jerk Standard Deviation X direction.
    Normalized and bounded within [-1,1].

* "fBodyAccJerk_std_Y"    numeric

    Fast Fourier Transform Body Accelerometer Jerk Standard Deviation Y direction.
    Normalized and bounded within [-1,1].
    
* "fBodyAccJerk_std_Z"    numeric

    Fast Fourier Transform Body Accelerometer Jerk Standard Deviation Z direction.
    Normalized and bounded within [-1,1].

* "fBodyGyro_mean_X"    numeric

    Fast Fourier Transform Body Gyroscope Mean X direction.
    Normalized and bounded within [-1,1].

* "fBodyGyro_mean_Y"    numeric

    Fast Fourier Transform Body Gyroscope Mean Y direction.
    Normalized and bounded within [-1,1].

* "fBodyGyro_mean_Z"    numeric

    Fast Fourier Transform Body Gyroscope Mean Z direction.
    Normalized and bounded within [-1,1].

* "fBodyGyro_std_X"    numeric

    Fast Fourier Transform Body Gyroscope Standard Deviation X direction.
    Normalized and bounded within [-1,1].

* "fBodyGyro_std_Y"    numeric

    Fast Fourier Transform Body Gyroscope Standard Deviation Y direction.
    Normalized and bounded within [-1,1].

* "fBodyGyro_std_Z"    numeric

    Fast Fourier Transform Body Gyroscope Standard Deviation Z direction.
    Normalized and bounded within [-1,1].

* "fBodyAccMag_mean"   numeric

    Fast Fourier Transform Body Accelerometer Magnitude Mean.
    Normalized and bounded within [-1,1].

* "fBodyAccMag_std"   numeric

    Fast Fourier Transform Body Accelerometer Magnitude Standard Deviation.
    Normalized and bounded within [-1,1].

* "fBodyAccJerkMag_mean"   numeric

    Fast Fourier Transform Body Accelerometer Jerk Magnitude Mean.
    Normalized and bounded within [-1,1].

* "fBodyAccJerkMag_std"   numeric

    Fast Fourier Transform Body Accelerometer Jerk Magnitude Standard Deviation.
    Normalized and bounded within [-1,1].

* "fBodyGyroMag_mean"   numeric

    Fast Fourier Transform Body Gyroscope Magnitude Mean.
    Normalized and bounded within [-1,1].

* "fBodyGyroMag_std"   numeric

    Fast Fourier Transform Body Gyroscope Magnitude Standard Deviation.
    Normalized and bounded within [-1,1].

* "fBodyGyroJerkMag_mean"   numeric

    Fast Fourier Transform Body Gyroscope Jerk Magnitude Mean.
    Normalized and bounded within [-1,1].
    
* "fBodyGyroJerkMag_std"   numeric

    Fast Fourier Transform Body Gyroscope Jerk Magnitude Standard Deviation.
    Normalized and bounded within [-1,1].