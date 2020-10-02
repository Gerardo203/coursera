# Downloading data
url = 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
download.file(url,'data.zip')

# Extract files
unzip('data.zip')

# read files for test data
x_test <- read.table('UCI HAR Dataset/test/X_test.txt')
y_test <- read.table('UCI HAR Dataset/test/y_test.txt')
subject_test <- read.table('UCI HAR Dataset/test/subject_test.txt')

# read files for train data
x_train <- read.table('UCI HAR Dataset/train/X_train.txt')
y_train <- read.table('UCI HAR Dataset/train/y_train.txt')
subject_train <- read.table('UCI HAR Dataset/train/subject_train.txt')

# feautre vector
f_vector <- read.table('UCI HAR Dataset/features.txt')

# activity lables
act_lables <- read.table('UCI HAR Dataset/activity_labels.txt')

# labeling
colnames(act_lables) <- c('id', 'activity')

colnames(x_train) <- f_vector[,2]
colnames(y_train) <- 'activity'
colnames(subject_train) <- 'subject'

colnames(x_test) <- f_vector[,2]
colnames(y_train) <- 'activity'
colnames(subject_train) <- 'subject'

# merging



