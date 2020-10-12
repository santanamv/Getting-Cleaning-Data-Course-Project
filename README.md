# Getting-Cleaning-Data-Course-Project
My coursera Johns Hopkins Getting &amp; Cleaning Data Course final assignment submission files are included in this repo.

I am including here all the steps I took to complete this project.

PREWORK
Downloaded files from the coursera site
Unzipped the data file into my working directory.

SCRIPTS
I created scripts to read the data from my working directory into R; to merge the files; and to create the final tidy data independent file containing the means (or averages) of all the measures. I saved all the scripts into an R program I called "data cleaning final assignment.R"

Specifically, I combined the training dataset and test dataset; extracted partial variables to create another dataset with the averages of each variable for each activity; ensured the appropriate labels were kept in the final tidy data set.

The instructions from the class were:
    Merges the training and the test sets to create one data set. Use command rbind to combine training and test set
    Extracts only the measurements on the mean and standard deviation for each measurement. Use grep command to get column indexes for variable 
    name contains "mean()" or "std()"
    Uses descriptive activity names to name the activities in the data set Convert activity labels to characters and add a new column as factor
    Appropriately labels the data set with descriptive variable names. Give the selected descriptive names to variable columns
    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each 
    subject. Use pipeline command to create a new tidy dataset with command group_by and summarize_each in dplyr package

DATA ANALYZED
According to the information included in the packaget from the course, the variables in the data X are sensor signals measured with waist-mounted smartphone from 30 subjects. The variable in the data Y indicates activity type the subjects performed during recording.

NEW DATASET CREATED
The new generated tidy dataset contains the variables calculated based on the mean and standard deviation. Each row of the dataset is an average of each activity type for all subjects. The tidy data set follows the following format: a column with the activities called label; 66 columns containing the positional data for each of the variables measured (referred to as features) and a final column referring to the activities using digits 1 through 6.
