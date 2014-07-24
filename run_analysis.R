## 1. Merges the training and the test sets to create one data set.
library(data.table)
read.lines <- function(f) {
    fread(f, colClasses = "character", sep = "\n", header = FALSE)$V1
}
X <- c(read.lines("train/X_train.txt"), read.lines("test/X_test.txt")) 
y <- c(fread("train/y_train.txt")$V1, fread("test/y_test.txt")$V1)

## 2. Extracts only the measurements on the mean and standard deviation 
## for each measurement. 
features <- fread("features.txt")$V2
extracted <- grep("(mean|std)\\(", features)
data <- sapply(extracted, function(i) 
            as.numeric(sapply(X, substr, 16*i-15, 16*i, USE.NAMES = FALSE)))
data <- as.data.frame(data)

## 3. Uses descriptive activity names to name the activities in the data set
label <- fread("activity_labels.txt")$V2
subject <- c(fread("train/subject_train.txt")$V1, 
             fread("test/subject_test.txt")$V1)
activity <- label[y]
subject.activity <- paste(subject, activity, sep = " ")

## 4. Appropriately labels the data set with descriptive variable names. 
name <- features[extracted];
name <- gsub("-", ".", gsub("\\(\\)", "", name))
name <- gsub("^t", "Time", gsub("^f", "Freq", name))
name <- gsub("Acc", "Acceleration", gsub("Gyro", "Gyroscope", name))
name <- gsub("Mag", "Magnitude", name)
names(data) <- name

## 5. Creates a second, independent tidy data set with the average 
## of each variable for each activity and each subject.
tidy <- as.data.frame(
    t(sapply(split(data, subject.activity), colMeans)))
split <- strsplit(row.names(tidy), split = " ")
Subject <- sapply(split, function(x) x[1])
Activity <- sapply(split, function(x) x[2])
tidy <- cbind(Subject, Activity, tidy)

## save to a text file, which can be read again using:
## read.table("data.txt", sep = " ", header = TRUE)
write.table(tidy, file = "data.txt", sep = " ", row.names = FALSE)

