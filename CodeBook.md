Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd-order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate means and standard deviations of the feature vector for each pattern. The '-XYZ' suffix is used to denote 3-axial signals in the X, Y and Z directions.

---------------------------------------

The source data contained multiple rows for each subject and activity type. That is, each activity was performed multiple times by the same subject. The mean, for example, of a signal would then be the mean value of that signal during that one performance of that particular activity.

**Note:** For the final output file (`tidymeans.txt`), multiple performances were aggregated further by taking the mean of each measurement for a given activity by a given subject. So when referencing the tidymeans.csv file, each variable below should be interpreted as the *mean* of the listed measurement, resulting in a "mean of means" and a "mean of standard deviations".

<br>


| Variable Name | Description |
|:--------------|:-------------|
| subject              | Unique number for each subject, 1-30    |
| activity             | Descriptive text for the six possible activities per subject:<ul><li>LAYING<li>SITTING<li>STANDING<li>WALKING<li>WALKING_DOWNSTAIRS<li>WALKING_UPSTAIRS</ul> |
| tBodyAcc.mean.X      | Mean of body acceleration signal on the X-axis |
| tBodyAcc.mean.Y      | Mean of body acceleration signal on the Y-axis |
| tBodyAcc.mean.Z      | Mean of body acceleration signal on the Z-axis |
| tBodyAcc.std.X       | Standard deviation of body acceleration signal on the X-axis |
| tBodyAcc.std.Y       | Standard deviation of body acceleration signal on the Y-axis |
| tBodyAcc.std.Z       | Standard deviation of body acceleration signal on the Z-axis |
| tGravityAcc.mean.X   | Mean of gravity acceleration signal on the X-axis |
| tGravityAcc.mean.Y   | Mean of gravity acceleration signal on the Y-axis |
| tGravityAcc.mean.Z   | Mean of gravity acceleration signal on the Z-axis |
| tGravityAcc.std.X    | Standard deviation of gravity acceleration signal on the X-axis |
| tGravityAcc.std.Y    | Standard deviation of gravity acceleration signal on the Y-axis |
| tGravityAcc.std.Z    | Standard deviation of gravity acceleration signal on the Z-axis |
| tBodyAccJerk.mean.X  | Mean of body linear acceleration on the X-axis |
| tBodyAccJerk.mean.Y  | Mean of body linear acceleration on the Y-axis |
| tBodyAccJerk.mean.Z  | Mean of body linear acceleration on the Z-axis |
| tBodyAccJerk.std.X   | Standard deviation of body linear acceleration on the X-axis |
| tBodyAccJerk.std.Y   | Standard deviation of body linear acceleration on the Y-axis |
| tBodyAccJerk.std.Z   | Standard deviation of body linear acceleration on the Z-axis |
| tBodyGyro.mean.X     | Mean of body gyroscope signal on the X-axis |
| tBodyGyro.mean.Y     | Mean of body gyroscope signal on the Y-axis |
| tBodyGyro.mean.Z     | Mean of body gyroscope signal on the Z-axis |
| tBodyGyro.std.X      | Standard deviation of body gyroscope signal on the X-axis |
| tBodyGyro.std.Y      | Standard deviation of body gyroscope signal on the Y-axis |
| tBodyGyro.std.Z      | Standard deviation of body gyroscope signal on the Z-axis |
| tBodyGyroJerk.mean.X | Mean of body angular velocity on the X-axis |
| tBodyGyroJerk.mean.Y | Mean of body angular velocity on the Y-axis |
| tBodyGyroJerk.mean.Z | Mean of body angular velocity on the Z-axis |
| tBodyGyroJerk.std.X  | Standard deviation of body angular velocity on the X-axis |
| tBodyGyroJerk.std.Y  | Standard deviation of body angular velocity on the Y-axis |
| tBodyGyroJerk.std.Z  | Standard deviation of body angular velocity on the Z-axis |
| tBodyAccMag.mean     | Mean of magnitude of body acceleration signal |
| tBodyAccMag.std      | Standard deviation of magnitude of body acceleration signal |
| tGravityAccMag.mean  | Mean of magnitude of gravity acceleration signal |
| tGravityAccMag.std   | Standard deviation of magnitude of gravity acceleration signal |
| tBodyAccJerkMag.mean | Mean of magnitude of body linear acceleration |
| tBodyAccJerkMag.std  | Standard deviation of magnitude of body linear acceleration |
| tBodyGyroMag.mean    | Mean of magnitude of body gyroscope signal |
| tBodyGyroMag.std     | Standard deviation of magnitude of body gyroscope signal |
| tBodyGyroJerkMag.mean| Mean of magnitude of body angular velocity |
| tBodyGyroJerkMag.std | Standard deviation of magnitude of body angular velocity |
| fBodyAcc.mean.X      | Mean of the Fast Fourier Transform (FFT) of body acceleration signal on the X-axis |
| fBodyAcc.mean.Y      | Mean of FFT body acceleration signal on the Y-axis |
| fBodyAcc.mean.Z      | Mean of FFT body acceleration signal on the Z-axis |
| fBodyAcc.std.X       | Standard deviation of FFT body acceleration signal on the X-axis |
| fBodyAcc.std.Y       | Standard deviation of FFT body acceleration signal on the Y-axis |
| fBodyAcc.std.Z       | Standard deviation of FFT body acceleration signal on the Z-axis |
| fBodyAccJerk.mean.X  | Mean of FFT body linear acceleration on the X-axis |
| fBodyAccJerk.mean.Y  | Mean of FFT body linear acceleration on the Y-axis |
| fBodyAccJerk.mean.Z  | Mean of FFT body linear acceleration on the Z-axis |
| fBodyAccJerk.std.X   | Standard deviation of FFT body linear acceleration on the X-axis |
| fBodyAccJerk.std.Y   | Standard deviation of FFT body linear acceleration on the Y-axis |
| fBodyAccJerk.std.Z   | Standard deviation of FFT body linear acceleration on the Z-axis |
| fBodyGyro.mean.X     | Mean of FFT body gyroscope signal on the X-axis |
| fBodyGyro.mean.Y     | Mean of FFT body gyroscope signal on the Y-axis |
| fBodyGyro.mean.Z     | Mean of FFT body gyroscope signal on the Z-axis |
| fBodyGyro.std.X      | Standard deviation of FFT body gyroscope signal on the X-axis |
| fBodyGyro.std.Y      | Standard deviation of FFT body gyroscope signal on the Y-axis |
| fBodyGyro.std.Z      | Standard deviation of FFT body gyroscope signal on the Z-axis |
| fBodyAccMag.mean     | Mean of magnitude of FFT body acceleration signal |
| fBodyAccMag.std      | Standard deviation of magnitude of FFT body acceleration signal |
| fBodyAccJerkMag.mean | Mean of magnitude of FFT body linear acceleration |
| fBodyAccJerkMag.std  | Standard deviations of magnitude of FFT body linear acceleration |
| fBodyGyroMag.mean    | Mean of magnitude of FFT body gyroscope signal |
| fBodyGyroMag.std     | Standard deviation of magnitude of FFT body gyroscope signal |
| fBodyGyroJerkMag.mean| Mean of magnitude of FFT body angular velocity |
| fBodyGyroJerkMag.std | Standard deviation of magnitude of FFT body angular velocity |
