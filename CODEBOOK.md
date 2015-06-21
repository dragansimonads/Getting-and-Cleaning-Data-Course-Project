#####Getting-and-Cleaning-Data-Course-Project : Data Dictionary 

##Original data 
The files could be downloaded from :
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
<p></p><p>
The features in original database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
</p><p>
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
</p><p>
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
</p><p>
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
</p>
##Selected Features
The features selected for this database are the averages of the original values, grouped by Activity and Subject, of a subset of the original Human Activity Recognition Using Smartphones Data Set where only mean() and std() was selected. ( read more about original database at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones )
</p><p>
####Columns in the final result : 
</p><p>Subject
</p><p>Activity
</p><p>tBodyAcc-mean-X
</p><p>tBodyAcc-mean-Y
</p><p>tBodyAcc-mean-Z
</p><p>tBodyAcc-std-X
</p><p>tBodyAcc-std-Y
</p><p>tBodyAcc-std-Z
</p><p>tGravityAcc-mean-X
</p><p>tGravityAcc-mean-Y
</p><p>tGravityAcc-mean-Z
</p><p>tGravityAcc-std-X
</p><p>tGravityAcc-std-Y
</p><p>tGravityAcc-std-Z
</p><p>tBodyAccJerk-mean-X
</p><p>tBodyAccJerk-mean-Y
</p><p>tBodyAccJerk-mean-Z
</p><p>tBodyAccJerk-std-X
</p><p>tBodyAccJerk-std-Y
</p><p>tBodyAccJerk-std-Z
</p><p>tBodyGyro-mean-X
</p><p>tBodyGyro-mean-Y
</p><p>tBodyGyro-mean-Z
</p><p>tBodyGyro-std-X
</p><p>tBodyGyro-std-Y
</p><p>tBodyGyro-std-Z
</p><p>tBodyGyroJerk-mean-X
</p><p>tBodyGyroJerk-mean-Y
</p><p>tBodyGyroJerk-mean-Z
</p><p>tBodyGyroJerk-std-X
</p><p>tBodyGyroJerk-std-Y
</p><p>tBodyGyroJerk-std-Z
</p><p>tBodyAccMag-mean
</p><p>tBodyAccMag-std
</p><p>tGravityAccMag-mean
</p><p>tGravityAccMag-std
</p><p>tBodyAccJerkMag-mean
</p><p>tBodyAccJerkMag-std
</p><p>tBodyGyroMag-mean
</p><p>tBodyGyroMag-std
</p><p>tBodyGyroJerkMag-mean
</p><p>tBodyGyroJerkMag-std
</p><p>fBodyAcc-mean-X
</p><p>fBodyAcc-mean-Y
</p><p>fBodyAcc-mean-Z
</p><p>fBodyAcc-std-X
</p><p>fBodyAcc-std-Y
</p><p>fBodyAcc-std-Z
</p><p>fBodyAccJerk-mean-X
</p><p>fBodyAccJerk-mean-Y
</p><p>fBodyAccJerk-mean-Z
</p><p>fBodyAccJerk-std-X
</p><p>fBodyAccJerk-std-Y
</p><p>fBodyAccJerk-std-Z
</p><p>fBodyGyro-mean-X
</p><p>fBodyGyro-mean-Y
</p><p>fBodyGyro-mean-Z
</p><p>fBodyGyro-std-X
</p><p>fBodyGyro-std-Y
</p><p>fBodyGyro-std-Z
</p><p>fBodyAccMag-mean
</p><p>fBodyAccMag-std
</p><p>fBodyBodyAccJerkMag-mean
</p><p>fBodyBodyAccJerkMag-std
</p><p>fBodyBodyGyroMag-mean
</p><p>fBodyBodyGyroMag-std
</p><p>fBodyBodyGyroJerkMag-mean
</p><p>fBodyBodyGyroJerkMag-std
</p>
