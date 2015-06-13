# Course Project for "Getting and Cleaning Data"
#
# Jeff Jetton
#
# run_analysis.R


###############################
#####       STEP ONE      #####
###############################

# Merge training and test sets into one data set

# Read in all the necessary data files for both
# the training and test sets:
#   * Subject numbers
#   * Activity numbers)
#   * The 561 different measurements (features)
train.sub <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train.act <- read.table("./UCI HAR Dataset/train/y_train.txt")
train.feat <- read.table("./UCI HAR Dataset/train/X_train.txt")
test.sub <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test.act <- read.table("./UCI HAR Dataset/test/y_test.txt")
test.feat <- read.table("./UCI HAR Dataset/test/X_test.txt")

# Check tables sizes for reasonableness/accuracy
dim(train.sub); dim(train.act); dim(train.feat)
dim(test.sub); dim(test.act); dim(test.feat)

# Merge all the datasets into one
train <- cbind(train.sub, train.act, train.feat)
test <- cbind(test.sub, test.act, test.feat)
data <- rbind(train, test)

# Check resulting table for reasonableness
dim(data)
table(data[ ,2], data[ ,1])

# Remove old tables to free up memory
rm(list=c("train.sub", "train.act", "train.feat", "train",
          "test.sub", "test.act", "test.feat", "test"))



###############################
#####       STEP TWO      #####
###############################

# We only want to keep the mean() and std() features

# Load in the list of feature names
features <- read.table("./UCI HAR Dataset/features.txt",
                       colClasses=c("character"))
# Convert to vector and make sure we have 561 elements
features <- features[ ,2]
length(features)

# Create a logical vector flagging the columns we're keeping
keep.columns <- grepl("mean\\(\\)|std\\(\\)", features)
sum(keep.columns)  ## Should be 66 "trues"

# Allow for our extra subject and activity columns at the front
features <- c("subject", "activity", features)
keep.columns <- c(TRUE, TRUE, keep.columns)

# Only preserve the columns that are TRUE in keep.columns
data <- data[ , keep.columns]

# Confirm dimensions
dim(data)




###############################
#####     STEP THREE      #####
###############################

# Translate the activities to descriptive names

# Read in the translated activity names and convert to vector
act.labels <- read.table("./UCI HAR Dataset/activity_labels.txt",
                         colClasses=c("character"))
act.labels <- act.labels[ , 2]

# Replace activity numbers with text descriptions
# (We're fortunate the the activity numbers match
# the vector index of the correct description!)
data[ , 2] <- act.labels[data[ , 2]]

# Convert to a factor
data[ , 2] <- as.factor(data[ , 2])

# Confirm results
table(data[ , 2])




###############################
#####     STEP FOUR       #####
###############################

# Label columns with descriptive variable names

# Only pull out the variables we need from our
# previously-created features vector
features <- features[keep.columns]

# Replace all parenthesis with "" (nothing)
features.fixed <- gsub("\\(|\\)", "", features)

# Replace all hyphens with periods
features.fixed <- gsub("-", ".", features.fixed)

# Fix that weird "BodyBody" problem
features.fixed <- gsub("BodyBody", "Body", features.fixed)

# Retitle columns to our new list of features
names(data) <- features.fixed




###############################
#####     STEP FIVE       #####
###############################

# Make a new data set with the average of each variable
# for each combination of activity and subject
tidy.means <- aggregate(. ~ subject + activity, data=data, mean)

# Reorder so that subjects and activity group better
tidy.means<- tidy.means[order(tidy.means$subject, tidy.means$activity),]

# Output the data
write.table(tidy.means, file="tidymeans.txt", row.names=FALSE)



