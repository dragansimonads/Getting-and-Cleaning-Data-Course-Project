<b>Getting-and-Cleaning-Data-Course-Project : Data Dictionary </b>

<h2>Original data</h2> The files could be downloaded from :
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
<p></p><p>
The features in original database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
</p><p>
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
</p><p>
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
</p><p>
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
</p>
<h2>Selected Features</h2>
The features selected for this database are the averages of the original values, grouped by Activity and Subject, of a subset of the original Human Activity Recognition Using Smartphones Data Set where only mean() and std() was selected. ( read more about original database at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones )
</p><p>
Columns in the final result : 
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
fBodyGyro-std-X
fBodyGyro-std-Y
fBodyGyro-std-Z
fBodyAccMag-mean
fBodyAccMag-std
fBodyBodyAccJerkMag-mean
fBodyBodyAccJerkMag-std
fBodyBodyGyroMag-mean
fBodyBodyGyroMag-std
fBodyBodyGyroJerkMag-mean
fBodyBodyGyroJerkMag-std


Subject
Activity
tBodyAcc-mean-X
tBodyAcc-mean-Y
tBodyAcc-mean-Z
tBodyAcc-std-X
tBodyAcc-std-Y
tBodyAcc-std-Z
tGravityAcc-mean-X
tGravityAcc-mean-Y
tGravityAcc-mean-Z
tGravityAcc-std-X
tGravityAcc-std-Y
tGravityAcc-std-Z
tBodyAccJerk-mean-X
tBodyAccJerk-mean-Y
tBodyAccJerk-mean-Z
tBodyAccJerk-std-X
tBodyAccJerk-std-Y
tBodyAccJerk-std-Z
tBodyGyro-mean-X
tBodyGyro-mean-Y
tBodyGyro-mean-Z
tBodyGyro-std-X
tBodyGyro-std-Y
tBodyGyro-std-Z
tBodyGyroJerk-mean-X
tBodyGyroJerk-mean-Y
tBodyGyroJerk-mean-Z
tBodyGyroJerk-std-X
tBodyGyroJerk-std-Y
tBodyGyroJerk-std-Z
tBodyAccMag-mean
tBodyAccMag-std
tGravityAccMag-mean
tGravityAccMag-std
tBodyAccJerkMag-mean
tBodyAccJerkMag-std
tBodyGyroMag-mean
tBodyGyroMag-std
tBodyGyroJerkMag-mean
tBodyGyroJerkMag-std
fBodyAcc-mean-X
fBodyAcc-mean-Y
fBodyAcc-mean-Z
fBodyAcc-std-X
fBodyAcc-std-Y
fBodyAcc-std-Z
fBodyAccJerk-mean-X
fBodyAccJerk-mean-Y
fBodyAccJerk-mean-Z
fBodyAccJerk-std-X
fBodyAccJerk-std-Y
fBodyAccJerk-std-Z
fBodyGyro-mean-X
fBodyGyro-mean-Y
fBodyGyro-mean-Z
fBodyGyro-std-X
fBodyGyro-std-Y
fBodyGyro-std-Z
fBodyAccMag-mean
fBodyAccMag-std
fBodyBodyAccJerkMag-mean
fBodyBodyAccJerkMag-std
fBodyBodyGyroMag-mean
fBodyBodyGyroMag-std
fBodyBodyGyroJerkMag-mean
fBodyBodyGyroJerkMag-std



