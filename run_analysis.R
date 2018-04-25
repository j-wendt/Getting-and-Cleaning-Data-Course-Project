#call dplyr library - if error, use "install.packages(dplyr)"
library(dplyr)

#defines database filename
filename <- "UCI HAR Dataset.zip"

#downloads and unzip data at WD (working directory)
if (!file.exists(filename)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileURL, filename, mode="wb")
}
if (!dir.exists(paste(getwd(), "/UCI HAR Dataset"))){
    unzip(filename)
}

datapath <- "UCI HAR Dataset"

#reads train datafiles
subTrain <- read.table(file.path(datapath, "train", "subject_train.txt"))
xTrain <- read.table(file.path(datapath, "train", "X_train.txt"))
yTrain <- read.table(file.path(datapath, "train", "y_train.txt"))

#reads test datafiles
subTest <- read.table(file.path(datapath, "test", "subject_test.txt"))
xTest <- read.table(file.path(datapath, "test", "X_test.txt"))
yTest <- read.table(file.path(datapath, "test", "y_test.txt"))

#merges sets
xTotal <- rbind(xTrain, xTest)
yTotal <- rbind (yTrain, yTest)
subTotal <- rbind(subTrain, subTest)

#reads other files
varNames <- read.table(file.path(datapath, "features.txt"))
activityLabels <- read.table(file.path(datapath, "activity_labels.txt"))

#extracts mean and sd for each row
wantedVariables <- varNames[grep("mean\\(\\)|std\\(\\)",varNames[,2]),]
xTotal <- xTotal[,wantedVariables[,1]]

#names y data set
colnames(yTotal) <- "Activity"
yTotal$Activitylabel <- factor(yTotal$Activity, labels = as.character(activityLabels[,2]))
yTotal <- yTotal[,-1]

#names x data set
colnames(xTotal) <- varNames[wantedVariables[,1],2]

#creates a independent data set containing mean and sd
colnames(subTotal) <- "Subject"
outputFile <- cbind(xTotal, yTotal, subTotal) %>%
    group_by(yTotal, Subject) %>%
    summarize_each(funs(mean))

colnames(outputFile) <- gsub("[\\(\\)-]", "", colnames(outputFile)) 

#save output file in txt format
filename <- "tidydata.txt"
write.table(outputFile, file = filename, row.names = FALSE)