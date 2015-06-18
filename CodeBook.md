Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd-order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate means and standard deviations of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The source data contained multiple rows for each subject and activity type. That is, each activity was performed multiple times by the same subject. The mean, for example, of a signal would then be the mean value of that signal during that one performance of that particular activity.

**Note:** For the final output file ("tidymeans.csv"), multiple performances were aggregated further by taking the mean of each measurement for a given activity by a given subject. So when referencing the tidymeans.csv file, each variable below should be interpreted as the *mean* of the listed measurement, resulting in a "mean of means" and a "mean of standard deviations".

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
| fBodyAcc.mean.X      | num  -0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...
| fBodyAcc.mean.Y      | num  -0.86707 -0.94408 -0.97707 0.08971 0.00155 ...
| fBodyAcc.mean.Z      | num  -0.883 -0.959 -0.985 -0.332 -0.226 ...
| fBodyAcc.std.X       | num  -0.9244 -0.9764 -0.996 -0.3191 0.0243 ...
| fBodyAcc.std.Y       | num  -0.834 -0.917 -0.972 0.056 -0.113 ...
| fBodyAcc.std.Z       | num  -0.813 -0.934 -0.978 -0.28 -0.298 ...
| fBodyAccJerk.mean.X  | num  -0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...
| fBodyAccJerk.mean.Y  | num  -0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...
| fBodyAccJerk.mean.Z  | num  -0.948 -0.986 -0.991 -0.469 -0.288 ...
| fBodyAccJerk.std.X   | num  -0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...
| fBodyAccJerk.std.Y   | num  -0.932 -0.983 -0.987 0.107 -0.135 ...
| fBodyAccJerk.std.Z   | num  -0.961 -0.988 -0.992 -0.535 -0.402 ...
| fBodyGyro.mean.X     | num  -0.85 -0.976 -0.986 -0.339 -0.352 ...
| fBodyGyro.mean.Y     | num  -0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...
| fBodyGyro.mean.Z     | num  -0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...
| fBodyGyro.std.X      | num  -0.882 -0.978 -0.987 -0.517 -0.495 ...
| fBodyGyro.std.Y      | num  -0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...
| fBodyGyro.std.Z      | num  -0.917 -0.944 -0.982 -0.437 -0.238 ...
| fBodyAccMag.mean     | num  -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...
| fBodyAccMag.std      | num  -0.798 -0.928 -0.982 -0.398 -0.187 ...
| fBodyAccJerkMag.mean | num  -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...
| fBodyAccJerkMag.std  | num  -0.922 -0.982 -0.993 -0.103 -0.104 ...
| fBodyGyroMag.mean    | num  -0.862 -0.958 -0.985 -0.199 -0.186 ...
| fBodyGyroMag.std     | num  -0.824 -0.932 -0.978 -0.321 -0.398 ...
| fBodyGyroJerkMag.mean| num  -0.942 -0.99 -0.995 -0.319 -0.282 ...
| fBodyGyroJerkMag.std | num  -0.933 - |
