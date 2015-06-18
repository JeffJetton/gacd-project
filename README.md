## Getting and Cleaning Data -- Course Project

Jeff Jetton

<br>

The R code contained run_analysis.R was written to read and process a set of data tables found at the [UC Irvine Data Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). This data was collected from the embedded accelerometer and gyroscope of Samsung Galaxy S II phones worn by 30 different volunteers as they performed various activities (standing, sitting, laying, and walking on level ground as well as up and down stairs).

While the data, as originally presented, divided the subjects into training and test sets, the R script combines the data back together into a single data set. It only extracts the features that are direct means or standard deviations of the experiemental measurments.

*Note that some features with the word "mean" in them were not extracted, under the rationale that they are not actually means.* For example, the angle features at the end of the feature set are derived from means, but are not themselves a "mean" of anything.

