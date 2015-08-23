run_analysis <- function() {
    
    library(dplyr)
    
    # Load Train Data -- Relevant Files X_train, y_train and subject_train
    xTrain <- read.table("data/UCI HAR Dataset/train/X_train.txt")
    yTrain <- read.table("data/UCI HAR Dataset/train/y_train.txt")
    subjectTrain <- read.table("data/UCI HAR Dataset/train/subject_train.txt")
    
    # Load Test Data -- Relevant Files X_test, y_test and subject_test
    xTest <- read.table("data/UCI HAR Dataset/test/X_test.txt")
    yTest <- read.table("data/UCI HAR Dataset/test/y_test.txt")
    subjectTest <- read.table("data/UCI HAR Dataset/test/subject_test.txt")
    
    #Merge Train and Test Data
    xCombined <- rbind(xTrain, xTest)
    yCombined <- rbind(yTrain, yTest)
    subjectCombined <- rbind(subjectTrain, subjectTest)
    
    #Read features and extract mean and std column indexes
    features <- read.table("data/UCI HAR Dataset/features.txt")
    means <- features[grepl("mean()", features[,2], fixed = TRUE),]
    stds <- features[grepl("std()", features[,2], fixed = TRUE),]
    relevantCols <- rbind(means, stds)
    colnames(relevantCols) <- c("Index", "Name")
    
    #Read Activity Labdels
    actLabels <- read.table("data/UCI HAR Dataset/activity_labels.txt")
    
    
    #Extract Mean and Std Columns
    xRelevant <- xCombined[, relevantCols$Index]
    
    #Add activity data
    activityData <- cbind(yCombined, xRelevant)
    colnames(activityData) <- c("Activity", as.character(relevantCols$Name))
    activityData <- merge(actLabels, activityData, by.x = "V1", by.y = "Activity", all = TRUE)
    activityData <- subset(activityData, select = -c(1))
    
    #Add Subject
    activityData <- cbind(subjectCombined, activityData)
    colnames(activityData)[1] <- "Subject"
    colnames(activityData)[2] <- "Activity"
    
    #Step 5 Group Data by Activity and Subject and calculate average
    groupedData <- activityData %>% group_by(Activity, Subject) %>% summarise_each(funs(mean))
    
    #Provide Column Names
    columnNames <- colnames(groupedData)
    columnNames <- gsub("mean\\(\\)",  "Mean", columnNames)
    columnNames <- gsub("std\\(\\)",  "SD", columnNames)
    columnNames <- gsub("BodyBody",  "Body", columnNames)
    columnNames <- gsub("\\-",  ".", columnNames)
    columnNames <- gsub("tBody",  "timeBody", columnNames)
    columnNames <- gsub("tGravity",  "timeGravity", columnNames)
    columnNames <- gsub("fBody",  "frequencyBody", columnNames)
    columnNames <- gsub("fGravity",  "frequencyGravity", columnNames)
    columnNames <- gsub("Acc",  "Accelerometer", columnNames)
    columnNames <- gsub("Gyro",  "Gyroscope", columnNames)
    columnNames <- gsub("Mag",  "Magnitude", columnNames)
    
    colnames(groupedData) <- columnNames
    
    write.table(groupedData, file = "data/tidyData.txt", row.name=FALSE)
    groupedData
}
