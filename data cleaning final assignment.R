##this code is to analyze the movement data obtained from the Human Activity Recognition System using smartphones data set
##position and acceleration data was measured using the accelerometer and gyroscope sensors in smartphone devices

library(dplyr)

#read train and test data sets from my working directory
X_train <- read.table("./train/X_train.txt")
Y_train <- read.table("./train/Y_train.txt")
X_test <- read.table("./test/X_test.txt")
Y_test <- read.table("./test/Y_test.txt")

#variable & activity descriptions
var_names <- read.table("./features.txt")
activity_names <- read.table("./activity_labels.txt")

#combine test and train data sets
X_ALL <- rbind(X_train, X_test)
Y_ALL <- rbind(Y_train, Y_test)

#keep only mean and sd measures for each
selected_var <- var_names[grep("mean\\(\\)|std\\(\\)",var_names[,2]),]
   X_ALL <- X_ALL[,selected_var[,1]]
   
#add labels to activities in data set
colnames(Y_ALL) <- "activity_type"   
Y_ALL$label <- factor(Y_ALL$activity_type, labels = as.character(activity_names[,2]))
activity_type <- Y_ALL[,-1]

colnames(X_ALL) <- var_names[selected_var[,1],2]

#independent tidy data set with means for each activity per subject
#averages values and keeps column names for each of the measures taken and the activities captured in the first column (label)
total <- cbind(X_ALL, Y_ALL)
total_mean <- total %>% group_by(label) %>% summarize_if(is.numeric((across(where(~any(is.na(.)), ~mean(is.na(.), ~std(is.na(.))))))))
write.table(total_mean, file = "./independent_dataset.txt", row.names = FALSE, col.names = TRUE)



