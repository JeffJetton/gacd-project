## Getting and Cleaning Data: Course Project

Jeff Jetton

<br>

The R code contained in `run_analysis.R` was written to read and process a set of data tables found at the [UC Irvine Data Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). This data was collected from the embedded accelerometer and gyroscope of Samsung Galaxy S II phones worn by 30 different volunteers as they repeatedly performed activities of six types:  Standing, sitting, lying down (recorded in the data as "laying"), and walking on level ground as well as up and down stairs.

<br>

**What the R Script Does**

While the data, as originally presented, divided the subjects into training and test sets, the R script combines the data back together into a single data set (step 1). It only extracts the features that are direct means or standard deviations of the experimental measurements (step 2).

*Note that some features with the word "mean" in them were not extracted, under the rationale that they are not actually direct means of measurements.* For example, the angle features at the end of the feature set are derived from means, but are not themselves a "mean" of anything. Likewise, the "meanFreq" features are actually *weighted* averages of just the frequency components.

Next, the script converts the activities, which were coded as integers in the source data, into more descriptive, full-text descriptions (step 3). This is treated as a six-level factor variable in the data frame.

In the source data, the feature names were stored in a separate file rather than as headers in each main data file. We next transform the approriate feature names, removing invalid characters, etc., and apply them to the columns in our data frame (step 4).

Finally, our data is aggregated at the subject/activity level and output as a comma-separated, plain text file named `tidymeans.csv` (step 5). There are six different activity rows for each of the 30 subjects, for a total of 180 rows. The remaining columns are the means of the selected features from the source data. (Note that this effectively gives us "means of means" and "means of standard deviations".)

Please refer to the included codebook for more information on the included fields and the subsequent output file.

<br>

**Assumptions on Directory Structure**

The R script assumes that the source data is contained in the **current working directory**, maintaining the same directory structure it is originally provided in when downloaded from the UCI website:

* [Current Working Directory]
  * [UCI HAR Dataset]
    * [test]
      * subject_test.txt
      * X_test.txt
      * y_text.txt
    * [train]
      * subject_train.txt
      * X_train.txt
      * y_train.txt
    * activity_labels.txt
    * features.txt
