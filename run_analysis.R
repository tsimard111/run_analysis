## Start by creating a folder and downloading the files
if(!file.exists("./run_analysis")){dir.create("./run_analysis")}
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile = "./run_analysis/data.zip")
## Date downloaded: July 12, 2015.
## Unzip the files to the created directory
unzip(zipfile = "./run_analysis/data.zip", exdir = "./run_analysis")
## Read all of the required files
activityTest  <- read.table("./run_analysis/UCI HAR Dataset/test/Y_test.txt", header = FALSE)
activityTrain <- read.table("./run_analysis/UCI HAR Dataset/train/Y_train.txt", header = FALSE)
subjectTrain <- read.table("./run_analysis/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
subjectTest  <- read.table("./run_analysis/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
valuesTest  <- read.table("./run_analysis/UCI HAR Dataset/test/X_test.txt", header = FALSE)
valuesTrain <- read.table("./run_analysis/UCI HAR Dataset/train/X_train.txt", header = FALSE)
features <- read.table("./run_analysis/UCI HAR Dataset/features.txt", header = FALSE, stringsAsFactors = FALSE)
##Merge training and test sets
values <- rbind(valuesTrain, valuesTest)
subject <- rbind(subjectTrain, subjectTest)
activity <- rbind(activityTrain, activityTest)
subjectActivity <- cbind(subject, activity)
allData <- cbind(subjectActivity, values)
## Extract only the measurements on the mean and standard deviation for each measurement. 
       ## Start by creating provisional variable names
names(allData)[1] <- "Subject"
names(allData)[2] <- "Activity"
names(allData)[3:563] <- features$V2
       ## Then extract the first two columns along with any columns with names containing "mean" or "std"
smallData <- allData[,c(1,2,grep("mean|std",names(allData)))]
## Use descriptive activity names to name the activities in the data set by assigning labels to factors.
smallData$Activity <- factor(smallData$Activity,levels = c(1,2,3,4,5,6), labels=c("Walking", "Walking_Upstairs", "Walking_Downstairs", "Sitting", "Standing", "Laying"))
## Appropriately label the data set with descriptive variable names by replacing some jargon.
names(smallData)<-gsub("BodyBody", "Body", names(smallData))
names(smallData)<-gsub("Acc", "Acceleration", names(smallData))
names(smallData)<-gsub("Gyro", "Gyro", names(smallData))
names(smallData)<-gsub("Mag", "Magnitude", names(smallData))
names(smallData)<-gsub("^t", "Time", names(smallData))
names(smallData)<-gsub("^f", "Frequency", names(smallData))
## Creates a second, data set with the average of each variable for each activity and each subject.
require(dplyr)
tidy <- smallData %>% group_by(Activity, Subject) %>% summarise_each(funs(mean))
write.table(tidy, file = "tidydata.txt",row.name=FALSE)
