getdata
=======

### List of Files
README.md, this file  
CodeBook.md, the description of the tidy dataset & its variables  
run_analysis.R, the R script used to create the tidy dataset from the original, raw dataset  

### How to run the script run_analysis.R ?
1. Obtain the raw data from:  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

2. Extract the raw data to a folder and copy the R script to the folder

3. In R prompt, set the working directory to above folder and run the script  
setwd("path/to/some/directory")  
source("run_analysis.R")

### How the script works ?
1. Merges the training and the test sets to create one data set.  
Each dataset is read line by line using fread, so we will have two vector of strings. The the two vectors will be combined to one vector of strings.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 
Since the raw dataset is a fixed width format file, every observation of a variable will be extracted using 'substr' based on the order of the variable in the raw dataset. The matrix result will then be converted to a data.frame variable.

3. Uses descriptive activity names to name the activities in the data set  
This step will extract the subject identifiers and activity labels for all observations. The two variables will then be contenated to one string variable subject.activity, which is required to split the data for calculating the average value in step 5.

4. Appropriately labels the data set with descriptive variable names. 
In this step, all relevant variable names are extrated from 'features.txt'. Then some substitution are applied to convert the variables name to more friendly, human-readable form. Finally, the names are assigned to the data.frame variable.

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
The data.frame is splitted using subject.activity variable. Then 'sapply' and 'colMeans' are used to calculate the average values of variables. After that, we have a tidy dataset with only two variables are missing: Subject and Activity. The two variables are simply splitted from the row.names of the tidy dataset.